{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Image (
  ImageVerb(..)
  , draw
  , CreateImageParams(..)
) where

import Data.Text (Text, unpack)
import qualified Data.ByteString.Lazy as LBS
import Data.Text.IO as Tio (writeFile)
import System.Directory (createDirectoryIfMissing)
import System.FilePath (takeDirectory, takeExtension)

import Network.HTTP.Simple (getResponseBody, getResponseStatus, httpLBS, parseRequest)

import OpenAIGen.Common (runWithConfiguration, Nullable (..))
import qualified OpenAIGen as OAI

import Context (Context (..), convertSimpleContext, TError)
import Control.Monad (foldM)

data ImageVerb =
  CreateImage CreateImageParams
  | EditImage EditImageParams
  | VaryImage VaryImageParams

data CreateImageParams =
  PromptPath Text FilePath

data EditImageParams = EditImageParams
data VaryImageParams = VaryImageParams

newtype ImageResult =
  FileWritten Bool

draw :: Context -> CreateImageParams -> IO (Either TError ImageResult)
draw (Simple token modelName) (PromptPath userPrompt outputPath) =
  let
    (config, modelID) = convertSimpleContext token modelName OAI.CreateImageRequestModel'NonNullableText
    request = (OAI.mkCreateImageRequest userPrompt) { OAI.createImageRequestModel = Just $ NonNull modelID }
  in do
  rezA <- runWithConfiguration config $ OAI.createImage request
  let
    stCode = getResponseStatus rezA
  case stCode of
    ok200 -> case getResponseBody rezA of
      OAI.CreateImageOpResponseError errMsg ->
        pure . Left $ "@[draw] err: CreateImageResponseError " <> errMsg
      OAI.CreateImageOpResponse200 imageResponse -> do
        let
          dirPath = if takeExtension outputPath == "" then outputPath else takeDirectory outputPath
        createDirectoryIfMissing True dirPath
        case imageResponse.imagesResponseData of
          [] -> pure . Left $ "@[draw] err: no images in response."
          [anImage] ->
            let
              imagePath = if dirPath == outputPath then
                outputPath <> "/dalle-image.png"
              else
                outputPath
            in
            saveImage imagePath anImage
          _ -> foldM (\accum img -> (accum <>) <$> saveImageIdx dirPath img)
                     (Right (FileWritten True))
                     (zip [1..] imageResponse.imagesResponseData)


saveImageIdx :: FilePath -> (Int, OAI.Image) -> IO (Either String ImageResult)
saveImageIdx outputPath (idx, anImage) =
  let
    indexPath = outputPath <> "/dalle-" <> show idx <> ".png"
  in
  saveImage indexPath anImage

saveImage :: FilePath -> OAI.Image -> IO (Either String ImageResult)
saveImage imgPath anImage = do
  case anImage.imageB64Json of
    Just b64 -> do
      -- putStrLn $ "@[saveImage] saving image to " <> imgPath
      Tio.writeFile imgPath b64
      pure . Right $ FileWritten True
    Nothing ->
      case anImage.imageUrl of
        Just url -> do
          -- putStrLn $ "@[saveImage] saving URL " <> unpack url <> " to " <> imgPath
          request <- parseRequest $ unpack url
          httpLBS request >>= \response -> LBS.writeFile imgPath (getResponseBody response)
          pure . Right $ FileWritten True
        Nothing ->
          pure $ Left "@[saveImage] no image content in response."

