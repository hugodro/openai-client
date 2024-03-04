module OpenAIGen.Types.FunctionObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data FunctionObject
instance Show FunctionObject
instance Eq FunctionObject
instance FromJSON FunctionObject
instance ToJSON FunctionObject
