module OpenAIGen.Types.RunStepCompletionUsage where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data RunStepCompletionUsageNonNullable
instance Show RunStepCompletionUsageNonNullable
instance Eq RunStepCompletionUsageNonNullable
instance FromJSON RunStepCompletionUsageNonNullable
instance ToJSON RunStepCompletionUsageNonNullable
type RunStepCompletionUsage = OpenAIGen.Common.Nullable RunStepCompletionUsageNonNullable
