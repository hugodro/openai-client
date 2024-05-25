{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Audio (
  AudioVerb(..)
  , SpeechParams(..)
  , speak
  , TranscribeParams(..)
  , TranslateParams(..)
) where

import Data.Text (Text, unpack)
import qualified Data.ByteString as BS
import Network.HTTP.Simple ( getResponseBody, getResponseStatus )

import OpenAIGen.Common (runWithConfiguration)
import qualified OpenAIGen as OAI

import Context (Context (..), convertSimpleContext, TError)


data AudioVerb =
  Speech SpeechParams
  | Transcribe TranscribeParams
  | Translate TranslateParams

data SpeechParams =
  PromptPath Text FilePath Text -- ^ userPrompt, output path, narrator

data AudioResult =
  FileWritten Bool
  | Transcription Text
  | Translation Text


speakerFromText :: Text -> Maybe OAI.CreateSpeechRequestVoice'
speakerFromText aLabel =
  case aLabel of
    "alloy" -> Just OAI.CreateSpeechRequestVoice'EnumAlloy
    "echo" -> Just OAI.CreateSpeechRequestVoice'EnumEcho
    "fable" -> Just OAI.CreateSpeechRequestVoice'EnumFable
    "onyx" -> Just OAI.CreateSpeechRequestVoice'EnumOnyx
    "nova" -> Just OAI.CreateSpeechRequestVoice'EnumNova
    "shimmer" -> Just OAI.CreateSpeechRequestVoice'EnumShimmer
    _ -> Nothing


speak :: Context -> SpeechParams -> IO (Either TError AudioResult)
speak (Simple token modelName) (PromptPath userPrompt outputPath speaker) =
  let
    (config, modelID) = convertSimpleContext token modelName OAI.CreateSpeechRequestModel'Text
    mbNarrator = speakerFromText speaker
  in
    case mbNarrator of
      Nothing ->
        pure . Left $ "@[speak] err: No such narrator " <> unpack speaker <> "."
      Just narrator ->
        let
          request = OAI.mkCreateSpeechRequest userPrompt modelID narrator
        in do
        rezA <- runWithConfiguration config $ OAI.createSpeech request
        let
          stCode = getResponseStatus rezA
        case stCode of
          ok200 -> case getResponseBody rezA of
            OAI.CreateSpeechOpResponseError errMsg ->
              pure . Left $ "@[speak] err: CreateSpeechResponseError " <> errMsg
            OAI.CreateSpeechOpResponse200 content -> do
              -- TODO: catch error and translate appropriately for the FileWritten result.
              BS.writeFile outputPath content
              pure . Right $ FileWritten True

data TranscribeParams = TranscribeParams
data TranslateParams = TranslateParams
