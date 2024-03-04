-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubmitToolOutputsRunRequest
module OpenAIGen.Types.SubmitToolOutputsRunRequest where

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

-- | Defines the object schema located at @components.schemas.SubmitToolOutputsRunRequest@ in the specification.
-- 
-- 
data SubmitToolOutputsRunRequest = SubmitToolOutputsRunRequest {
  -- | tool_outputs: A list of tools for which the outputs are being submitted.
  submitToolOutputsRunRequestToolOutputs :: ([SubmitToolOutputsRunRequestToolOutputs'])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubmitToolOutputsRunRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tool_outputs" Data.Aeson.Types.ToJSON..= submitToolOutputsRunRequestToolOutputs obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tool_outputs" Data.Aeson.Types.ToJSON..= submitToolOutputsRunRequestToolOutputs obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubmitToolOutputsRunRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubmitToolOutputsRunRequest" (\obj -> GHC.Base.pure SubmitToolOutputsRunRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tool_outputs"))}
-- | Create a new 'SubmitToolOutputsRunRequest' with all required fields.
mkSubmitToolOutputsRunRequest :: [SubmitToolOutputsRunRequestToolOutputs'] -- ^ 'submitToolOutputsRunRequestToolOutputs'
  -> SubmitToolOutputsRunRequest
mkSubmitToolOutputsRunRequest submitToolOutputsRunRequestToolOutputs = SubmitToolOutputsRunRequest{submitToolOutputsRunRequestToolOutputs = submitToolOutputsRunRequestToolOutputs}
-- | Defines the object schema located at @components.schemas.SubmitToolOutputsRunRequest.properties.tool_outputs.items@ in the specification.
-- 
-- 
data SubmitToolOutputsRunRequestToolOutputs' = SubmitToolOutputsRunRequestToolOutputs' {
  -- | output: The output of the tool call to be submitted to continue the run.
  submitToolOutputsRunRequestToolOutputs'Output :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tool_call_id: The ID of the tool call in the \`required_action\` object within the run object the output is being submitted for.
  , submitToolOutputsRunRequestToolOutputs'ToolCallId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubmitToolOutputsRunRequestToolOutputs'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("output" Data.Aeson.Types.ToJSON..=)) (submitToolOutputsRunRequestToolOutputs'Output obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tool_call_id" Data.Aeson.Types.ToJSON..=)) (submitToolOutputsRunRequestToolOutputs'ToolCallId obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("output" Data.Aeson.Types.ToJSON..=)) (submitToolOutputsRunRequestToolOutputs'Output obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tool_call_id" Data.Aeson.Types.ToJSON..=)) (submitToolOutputsRunRequestToolOutputs'ToolCallId obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubmitToolOutputsRunRequestToolOutputs'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubmitToolOutputsRunRequestToolOutputs'" (\obj -> (GHC.Base.pure SubmitToolOutputsRunRequestToolOutputs' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "output")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tool_call_id"))}
-- | Create a new 'SubmitToolOutputsRunRequestToolOutputs'' with all required fields.
mkSubmitToolOutputsRunRequestToolOutputs' :: SubmitToolOutputsRunRequestToolOutputs'
mkSubmitToolOutputsRunRequestToolOutputs' = SubmitToolOutputsRunRequestToolOutputs'{submitToolOutputsRunRequestToolOutputs'Output = GHC.Maybe.Nothing,
                                                                                    submitToolOutputsRunRequestToolOutputs'ToolCallId = GHC.Maybe.Nothing}
