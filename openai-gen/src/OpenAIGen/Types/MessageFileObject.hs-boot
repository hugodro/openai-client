module OpenAIGen.Types.MessageFileObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data MessageFileObject
instance Show MessageFileObject
instance Eq MessageFileObject
instance FromJSON MessageFileObject
instance ToJSON MessageFileObject
