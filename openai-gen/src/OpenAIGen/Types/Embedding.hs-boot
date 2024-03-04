module OpenAIGen.Types.Embedding where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data Embedding
instance Show Embedding
instance Eq Embedding
instance FromJSON Embedding
instance ToJSON Embedding
