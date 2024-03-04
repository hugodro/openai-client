module OpenAIGen.Types.ChatCompletionRequestFunctionMessage where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data ChatCompletionRequestFunctionMessage
instance Show ChatCompletionRequestFunctionMessage
instance Eq ChatCompletionRequestFunctionMessage
instance FromJSON ChatCompletionRequestFunctionMessage
instance ToJSON ChatCompletionRequestFunctionMessage