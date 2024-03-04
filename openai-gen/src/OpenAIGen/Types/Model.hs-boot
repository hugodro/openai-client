module OpenAIGen.Types.Model where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data Model
instance Show Model
instance Eq Model
instance FromJSON Model
instance ToJSON Model
