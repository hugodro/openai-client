module OpenAIGen.Types.FineTuningJob where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAIGen.Common
data FineTuningJob
instance Show FineTuningJob
instance Eq FineTuningJob
instance FromJSON FineTuningJob
instance ToJSON FineTuningJob
data FineTuningJobError'NonNullable
instance Show FineTuningJobError'NonNullable
instance Eq FineTuningJobError'NonNullable
instance FromJSON FineTuningJobError'NonNullable
instance ToJSON FineTuningJobError'NonNullable
data FineTuningJobHyperparameters'
instance Show FineTuningJobHyperparameters'
instance Eq FineTuningJobHyperparameters'
instance FromJSON FineTuningJobHyperparameters'
instance ToJSON FineTuningJobHyperparameters'
data FineTuningJobHyperparameters'NEpochs'Variants
instance Show FineTuningJobHyperparameters'NEpochs'Variants
instance Eq FineTuningJobHyperparameters'NEpochs'Variants
instance FromJSON FineTuningJobHyperparameters'NEpochs'Variants
instance ToJSON FineTuningJobHyperparameters'NEpochs'Variants
data FineTuningJobStatus'
instance Show FineTuningJobStatus'
instance Eq FineTuningJobStatus'
instance FromJSON FineTuningJobStatus'
instance ToJSON FineTuningJobStatus'