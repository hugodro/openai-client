{-# LANGUAGE LambdaCase #-}

module ApiSpec (apiSpec) where

import Data.Text (Text, pack, unpack)
import qualified Data.Text as T (take)
import System.Environment ( getEnv )
import Test.Hspec (Spec, beforeAll, describe, it, shouldSatisfy)

import OpenAI (think)
import Actions.Chat (CompleteParams(..), ChatVerb(..))
import Actions.Audio (SpeechParams(..), AudioVerb(..))
import qualified Actions.Audio as A
import Actions.Image (CreateImageParams(..), ImageVerb(..))
import qualified Actions.Image as I
import Context (Context(..), Result (..))
import Action (Action(..))


findToken :: IO Text
findToken =
  pack <$> getEnv "OPENAI_API_KEY"


apiSpec :: Spec
apiSpec =
  beforeAll findToken $ do
    describe "think" $ do
      it "chat-complete with gpt-3.5-turbo" $ \token -> do
        let
          oaiContext = Simple token "gpt-3.5-turbo"
          params = SimplePrompt "Please describe the main advantages and disadvantages of developing software using Haskell."
          action = Complete params
        rezA <- think $ Chat action oaiContext
        case rezA of
          Right (TextResult content) ->
            putStrLn $ "openai reply: '" <> unpack (T.take 50 content) <> "...'"
          _ -> pure ()
        rezA `shouldSatisfy` \case
          Right (TextResult _) -> True
          _ -> False
      it "speech-create with tts-1" $ \token -> do
        let
          oaiContext = Simple token "tts-1"
          action = Speech $ A.PromptPath "This is an example of a 'hello world' text-to-speech generation." "/tmp/test-speech.mp3"
        rezA <- think $ Audio action oaiContext
        rezA `shouldSatisfy` \case
          Right NilResult -> True
          _ -> False
      it "image-create with dall-e-3" $ \token -> do
        let
          oaiContext = Simple token "dall-e-3"
          action = CreateImage $ I.PromptPath "A photorealistic depiction of Thiking Machines' Connection Machine calculating a fractal." "/tmp/test-image"
        rezA <- think $ Image action oaiContext
        rezA `shouldSatisfy` \case
          Right NilResult -> True
          _ -> False


