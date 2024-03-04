{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Chat (
  ChatVerb (..)
  , CompleteParams (..)
  , RespondCompletionParams (..)
  , StreamCompletionParams (..)
  , ChatResponse (..)
  , complete
) where

import Data.Text (Text)
import Network.HTTP.Simple ( getResponseBody, getResponseStatus )

import OpenAIGen.Common (runWithConfiguration)
import qualified OpenAIGen as OAI

import Context (Context (..), convertSimpleContext, TError)

data ChatVerb =
  Complete CompleteParams
  | RespondCompletion RespondCompletionParams
  | StreamCompletion StreamCompletionParams

newtype CompleteParams = SimplePrompt Text

data RespondCompletionParams = RespondCompletionParams
data StreamCompletionParams = StreamCompletionParams

data ChatResponse = 
  TextResponse (Maybe Text)
  | ArrayTextResponse [Maybe Text]


complete :: Context -> CompleteParams -> IO (Either TError ChatResponse)
complete (Simple token modelName) (SimplePrompt userPrompt) = 
  let
    (config, modelID) = convertSimpleContext token modelName OAI.CreateChatCompletionRequestModel'Text
    prompt = OAI.ChatCompletionRequestMessageChatCompletionRequestUserMessage $ OAI.mkChatCompletionRequestUserMessage (OAI.ChatCompletionRequestUserMessageContent'Text userPrompt)
    request = OAI.mkCreateChatCompletionRequest [prompt] modelID
  in do
  rezA <- runWithConfiguration config $ OAI.createChatCompletion request
  let
    stCode = getResponseStatus rezA
  case stCode of
    ok200 -> case getResponseBody rezA of
      OAI.CreateChatCompletionOpResponseError errMsg ->
        pure . Left $ "@[completeCmd] err: CreateChatCompletionResponseError " <> errMsg
      OAI.CreateChatCompletionOpResponse200 completion ->
        case completion.createChatCompletionResponseChoices of
          [] -> pure . Left $ "@[completeCmd] no content in response."
          [ aChoice ] ->
            pure . Right . TextResponse . nullableToMaybe $ aChoice.createChatCompletionResponseChoices'Message.chatCompletionResponseMessageContent
          choices ->
            pure . Right . ArrayTextResponse $ map (\c -> nullableToMaybe c.createChatCompletionResponseChoices'Message.chatCompletionResponseMessageContent) choices


nullableToMaybe :: OAI.Nullable a -> Maybe a
nullableToMaybe aVal =
  case aVal of
    OAI.NonNull a -> Just a
    OAI.Null -> Nothing

