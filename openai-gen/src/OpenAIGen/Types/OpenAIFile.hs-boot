module OpenAIGen.Types.OpenAIFile where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data OpenAIFile
instance Show OpenAIFile
instance Eq OpenAIFile
instance FromJSON OpenAIFile
instance ToJSON OpenAIFile
data OpenAIFilePurpose'
instance Show OpenAIFilePurpose'
instance Eq OpenAIFilePurpose'
instance FromJSON OpenAIFilePurpose'
instance ToJSON OpenAIFilePurpose'
data OpenAIFileStatus'
instance Show OpenAIFileStatus'
instance Eq OpenAIFileStatus'
instance FromJSON OpenAIFileStatus'
instance ToJSON OpenAIFileStatus'
