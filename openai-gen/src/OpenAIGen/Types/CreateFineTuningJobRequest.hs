-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CreateFineTuningJobRequest
module OpenAIGen.Types.CreateFineTuningJobRequest where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified OpenAIGen.Common
import OpenAIGen.TypeAlias

-- | Defines the object schema located at @components.schemas.CreateFineTuningJobRequest@ in the specification.
-- 
-- 
data CreateFineTuningJobRequest = CreateFineTuningJobRequest {
  -- | hyperparameters: The hyperparameters used for the fine-tuning job.
  createFineTuningJobRequestHyperparameters :: (GHC.Maybe.Maybe CreateFineTuningJobRequestHyperparameters')
  -- | model: The name of the model to fine-tune. You can select one of the
  -- [supported models](\/docs\/guides\/fine-tuning\/what-models-can-be-fine-tuned).
  , createFineTuningJobRequestModel :: CreateFineTuningJobRequestModel'Variants
  -- | suffix: A string of up to 18 characters that will be added to your fine-tuned model name.
  -- 
  -- For example, a \`suffix\` of \"custom-model-name\" would produce a model name like \`ft:gpt-3.5-turbo:openai:custom-model-name:7p4lURel\`.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40
  -- * Minimum length of 1
  , createFineTuningJobRequestSuffix :: (GHC.Maybe.Maybe (OpenAIGen.Common.Nullable Data.Text.Internal.Text))
  -- | training_file: The ID of an uploaded file that contains training data.
  -- 
  -- See [upload file](\/docs\/api-reference\/files\/upload) for how to upload a file.
  -- 
  -- Your dataset must be formatted as a JSONL file. Additionally, you must upload your file with the purpose \`fine-tune\`.
  -- 
  -- See the [fine-tuning guide](\/docs\/guides\/fine-tuning) for more details.
  , createFineTuningJobRequestTrainingFile :: Data.Text.Internal.Text
  -- | validation_file: The ID of an uploaded file that contains validation data.
  -- 
  -- If you provide this file, the data is used to generate validation
  -- metrics periodically during fine-tuning. These metrics can be viewed in
  -- the fine-tuning results file.
  -- The same data should not be present in both train and validation files.
  -- 
  -- Your dataset must be formatted as a JSONL file. You must upload your file with the purpose \`fine-tune\`.
  -- 
  -- See the [fine-tuning guide](\/docs\/guides\/fine-tuning) for more details.
  , createFineTuningJobRequestValidationFile :: (GHC.Maybe.Maybe (OpenAIGen.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hyperparameters" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters obj) : ["model" Data.Aeson.Types.ToJSON..= createFineTuningJobRequestModel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suffix" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestSuffix obj) : ["training_file" Data.Aeson.Types.ToJSON..= createFineTuningJobRequestTrainingFile obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("validation_file" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestValidationFile obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hyperparameters" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters obj) : ["model" Data.Aeson.Types.ToJSON..= createFineTuningJobRequestModel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suffix" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestSuffix obj) : ["training_file" Data.Aeson.Types.ToJSON..= createFineTuningJobRequestTrainingFile obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("validation_file" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestValidationFile obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateFineTuningJobRequest" (\obj -> ((((GHC.Base.pure CreateFineTuningJobRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hyperparameters")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "training_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "validation_file"))}
-- | Create a new 'CreateFineTuningJobRequest' with all required fields.
mkCreateFineTuningJobRequest :: CreateFineTuningJobRequestModel'Variants -- ^ 'createFineTuningJobRequestModel'
  -> Data.Text.Internal.Text -- ^ 'createFineTuningJobRequestTrainingFile'
  -> CreateFineTuningJobRequest
mkCreateFineTuningJobRequest createFineTuningJobRequestModel createFineTuningJobRequestTrainingFile = CreateFineTuningJobRequest{createFineTuningJobRequestHyperparameters = GHC.Maybe.Nothing,
                                                                                                                                 createFineTuningJobRequestModel = createFineTuningJobRequestModel,
                                                                                                                                 createFineTuningJobRequestSuffix = GHC.Maybe.Nothing,
                                                                                                                                 createFineTuningJobRequestTrainingFile = createFineTuningJobRequestTrainingFile,
                                                                                                                                 createFineTuningJobRequestValidationFile = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.CreateFineTuningJobRequest.properties.hyperparameters@ in the specification.
-- 
-- The hyperparameters used for the fine-tuning job.
data CreateFineTuningJobRequestHyperparameters' = CreateFineTuningJobRequestHyperparameters' {
  -- | batch_size: Number of examples in each batch. A larger batch size means that model parameters
  -- are updated less frequently, but with lower variance.
  createFineTuningJobRequestHyperparameters'BatchSize :: (GHC.Maybe.Maybe CreateFineTuningJobRequestHyperparameters'BatchSize'Variants)
  -- | learning_rate_multiplier: Scaling factor for the learning rate. A smaller learning rate may be useful to avoid
  -- overfitting.
  , createFineTuningJobRequestHyperparameters'LearningRateMultiplier :: (GHC.Maybe.Maybe CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Variants)
  -- | n_epochs: The number of epochs to train the model for. An epoch refers to one full cycle
  -- through the training dataset.
  , createFineTuningJobRequestHyperparameters'NEpochs :: (GHC.Maybe.Maybe CreateFineTuningJobRequestHyperparameters'NEpochs'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestHyperparameters'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("batch_size" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'BatchSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("learning_rate_multiplier" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'LearningRateMultiplier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("n_epochs" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'NEpochs obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("batch_size" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'BatchSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("learning_rate_multiplier" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'LearningRateMultiplier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("n_epochs" Data.Aeson.Types.ToJSON..=)) (createFineTuningJobRequestHyperparameters'NEpochs obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestHyperparameters'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateFineTuningJobRequestHyperparameters'" (\obj -> ((GHC.Base.pure CreateFineTuningJobRequestHyperparameters' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "batch_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "learning_rate_multiplier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "n_epochs"))}
-- | Create a new 'CreateFineTuningJobRequestHyperparameters'' with all required fields.
mkCreateFineTuningJobRequestHyperparameters' :: CreateFineTuningJobRequestHyperparameters'
mkCreateFineTuningJobRequestHyperparameters' = CreateFineTuningJobRequestHyperparameters'{createFineTuningJobRequestHyperparameters'BatchSize = GHC.Maybe.Nothing,
                                                                                          createFineTuningJobRequestHyperparameters'LearningRateMultiplier = GHC.Maybe.Nothing,
                                                                                          createFineTuningJobRequestHyperparameters'NEpochs = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.CreateFineTuningJobRequest.properties.hyperparameters.properties.batch_size.oneOf@ in the specification.
-- 
-- Number of examples in each batch. A larger batch size means that model parameters
-- are updated less frequently, but with lower variance.
data CreateFineTuningJobRequestHyperparameters'BatchSize'Variants =
   CreateFineTuningJobRequestHyperparameters'BatchSize'Auto -- ^ Represents the JSON value @"auto"@
  | CreateFineTuningJobRequestHyperparameters'BatchSize'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestHyperparameters'BatchSize'Variants
    where {toJSON (CreateFineTuningJobRequestHyperparameters'BatchSize'Int a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreateFineTuningJobRequestHyperparameters'BatchSize'Auto) = "auto"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestHyperparameters'BatchSize'Variants
    where {parseJSON val = if | val GHC.Classes.== "auto" -> GHC.Base.pure CreateFineTuningJobRequestHyperparameters'BatchSize'Auto
                              | GHC.Base.otherwise -> case (CreateFineTuningJobRequestHyperparameters'BatchSize'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.CreateFineTuningJobRequest.properties.hyperparameters.properties.learning_rate_multiplier.oneOf@ in the specification.
-- 
-- Scaling factor for the learning rate. A smaller learning rate may be useful to avoid
-- overfitting.
data CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Variants =
   CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Auto -- ^ Represents the JSON value @"auto"@
  | CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Double GHC.Types.Double
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Variants
    where {toJSON (CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Double a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Auto) = "auto"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Variants
    where {parseJSON val = if | val GHC.Classes.== "auto" -> GHC.Base.pure CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Auto
                              | GHC.Base.otherwise -> case (CreateFineTuningJobRequestHyperparameters'LearningRateMultiplier'Double Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.CreateFineTuningJobRequest.properties.hyperparameters.properties.n_epochs.oneOf@ in the specification.
-- 
-- The number of epochs to train the model for. An epoch refers to one full cycle
-- through the training dataset.
data CreateFineTuningJobRequestHyperparameters'NEpochs'Variants =
   CreateFineTuningJobRequestHyperparameters'NEpochs'Auto -- ^ Represents the JSON value @"auto"@
  | CreateFineTuningJobRequestHyperparameters'NEpochs'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestHyperparameters'NEpochs'Variants
    where {toJSON (CreateFineTuningJobRequestHyperparameters'NEpochs'Int a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreateFineTuningJobRequestHyperparameters'NEpochs'Auto) = "auto"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestHyperparameters'NEpochs'Variants
    where {parseJSON val = if | val GHC.Classes.== "auto" -> GHC.Base.pure CreateFineTuningJobRequestHyperparameters'NEpochs'Auto
                              | GHC.Base.otherwise -> case (CreateFineTuningJobRequestHyperparameters'NEpochs'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.CreateFineTuningJobRequest.properties.model.anyOf@ in the specification.
-- 
-- 
data CreateFineTuningJobRequestModel'OneOf2 =
   CreateFineTuningJobRequestModel'OneOf2Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateFineTuningJobRequestModel'OneOf2Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateFineTuningJobRequestModel'OneOf2EnumBabbage_002 -- ^ Represents the JSON value @"babbage-002"@
  | CreateFineTuningJobRequestModel'OneOf2EnumDavinci_002 -- ^ Represents the JSON value @"davinci-002"@
  | CreateFineTuningJobRequestModel'OneOf2EnumGpt_3'5Turbo -- ^ Represents the JSON value @"gpt-3.5-turbo"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestModel'OneOf2
    where {toJSON (CreateFineTuningJobRequestModel'OneOf2Other val) = val;
           toJSON (CreateFineTuningJobRequestModel'OneOf2Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateFineTuningJobRequestModel'OneOf2EnumBabbage_002) = "babbage-002";
           toJSON (CreateFineTuningJobRequestModel'OneOf2EnumDavinci_002) = "davinci-002";
           toJSON (CreateFineTuningJobRequestModel'OneOf2EnumGpt_3'5Turbo) = "gpt-3.5-turbo"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestModel'OneOf2
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "babbage-002" -> CreateFineTuningJobRequestModel'OneOf2EnumBabbage_002
                                             | val GHC.Classes.== "davinci-002" -> CreateFineTuningJobRequestModel'OneOf2EnumDavinci_002
                                             | val GHC.Classes.== "gpt-3.5-turbo" -> CreateFineTuningJobRequestModel'OneOf2EnumGpt_3'5Turbo
                                             | GHC.Base.otherwise -> CreateFineTuningJobRequestModel'OneOf2Other val)}
-- | Defines the oneOf schema located at @components.schemas.CreateFineTuningJobRequest.properties.model.anyOf@ in the specification.
-- 
-- The name of the model to fine-tune. You can select one of the
-- [supported models](\/docs\/guides\/fine-tuning\/what-models-can-be-fine-tuned).
data CreateFineTuningJobRequestModel'Variants =
   CreateFineTuningJobRequestModel'Text Data.Text.Internal.Text
  | CreateFineTuningJobRequestModel'CreateFineTuningJobRequestModel'OneOf2 CreateFineTuningJobRequestModel'OneOf2
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateFineTuningJobRequestModel'Variants
    where {toJSON (CreateFineTuningJobRequestModel'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreateFineTuningJobRequestModel'CreateFineTuningJobRequestModel'OneOf2 a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON CreateFineTuningJobRequestModel'Variants
    where {parseJSON val = case (CreateFineTuningJobRequestModel'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CreateFineTuningJobRequestModel'CreateFineTuningJobRequestModel'OneOf2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
