{-# OPTIONS_GHC -Wno-unused-matches -Wno-unused-top-binds #-}
module OpenAI where

import Action (Action(..))
import Actions.Chat (complete, ChatVerb(..), ChatResponse(..))
import Actions.Audio (speak, AudioVerb(..))
import Actions.Image (draw, ImageVerb(..))

import Context (Context(..), Result (..), TError)
import Data.Maybe (fromMaybe)

think :: Action Context -> IO (Either TError Result)
think (Audio verb context) = do
  putStrLn "@[think-audio] starting."
  rezA <- case verb of
    Speech params -> do
      rezA <- speak context params
      case rezA of
        Left errMsg -> pure $ Left errMsg
        Right _ -> pure $ Right NilResult
    Transcribe params ->
      pure . Left $ "@[think-audio] missing: transcribe."
    Translate params ->
      pure . Left $ "@[think-audio] missing: translate."
  pure $ Right NilResult


think (Chat verb context) = do
  putStrLn "@[think-chat] starting."
  case verb of
    Complete params -> do
      rezA <- complete context params
      case rezA of
        Left err -> pure $ Left err
        Right aResult ->
          case aResult of
            TextResponse aText ->
              pure . Right . TextResult $ fromMaybe "" aText
            ArrayTextResponse aTexts ->
              pure . Right . TextResult $
                  foldl
                    (
                      \acc aText ->
                        maybe acc (
                          \t ->
                          case acc of "" -> t ; _ -> acc <> "\n" <> t
                        ) aText
                    ) "" aTexts
    RespondCompletion params ->
      pure . Left $ "@[think-chat] missing: respond-completion."
    StreamCompletion params ->
      pure . Left $ "@[think-chat] missing: stream-completion."


think (Embedding verb context) = do
  putStrLn "@[think-embedding] starting."
  pure $ Right NilResult

think (FineTune verb context) = do
  putStrLn "@[think-fine-tune] starting."
  pure $ Right NilResult

think (Files verb context) = do
  putStrLn "@[think-files] starting."
  pure $ Right NilResult

think (Image verb context) = do
  putStrLn "@[think-image] starting."
  case verb of
    CreateImage params -> do
      rezA <- draw context params
      case rezA of
        Left errMsg -> pure $ Left errMsg
        Right _ -> pure $ Right NilResult
    EditImage _ -> pure . Left $ "@[think-image] missing: edit-image."
    VaryImage _ -> pure . Left $ "@[think-image] missing: vary-image."

think (Model verb context) = do
  putStrLn "@[think-model] starting."
  pure $ Right NilResult

think (Moderation verb context) = do
  putStrLn "@[think-moderation] starting."
  pure $ Right NilResult

think (Assistant verb context) = do
  putStrLn "@[think-assistant] starting."
  pure $ Right NilResult

think (Thread verb context) = do
  putStrLn "@[think-thread] starting."
  pure $ Right NilResult

think (Message verb context) = do
  putStrLn "@[think-message] starting."
  pure $ Right NilResult

think (Run verb context) = do
  putStrLn "@[think-run] starting."
  pure $ Right NilResult

think (Completion verb context) = do
  putStrLn "@[think-completion] starting."
  pure $ Right NilResult

