module OpenAIGen.Types.MessageObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data MessageObject
instance Show MessageObject
instance Eq MessageObject
instance FromJSON MessageObject
instance ToJSON MessageObject
data MessageObjectContent'Variants
instance Show MessageObjectContent'Variants
instance Eq MessageObjectContent'Variants
instance FromJSON MessageObjectContent'Variants
instance ToJSON MessageObjectContent'Variants
data MessageObjectRole'
instance Show MessageObjectRole'
instance Eq MessageObjectRole'
instance FromJSON MessageObjectRole'
instance ToJSON MessageObjectRole'
