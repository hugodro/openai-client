-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RunObject
module OpenAIGen.Types.RunObject where

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
import {-# SOURCE #-} OpenAIGen.Types.AssistantToolsCode
import {-# SOURCE #-} OpenAIGen.Types.AssistantToolsFunction
import {-# SOURCE #-} OpenAIGen.Types.AssistantToolsRetrieval
import {-# SOURCE #-} OpenAIGen.Types.RunCompletionUsage
import {-# SOURCE #-} OpenAIGen.Types.RunToolCallObject

-- | Defines the object schema located at @components.schemas.RunObject@ in the specification.
-- 
-- Represents an execution run on a [thread](\/docs\/api-reference\/threads).
data RunObject = RunObject {
  -- | assistant_id: The ID of the [assistant](\/docs\/api-reference\/assistants) used for execution of this run.
  runObjectAssistantId :: Data.Text.Internal.Text
  -- | cancelled_at: The Unix timestamp (in seconds) for when the run was cancelled.
  , runObjectCancelledAt :: (OpenAIGen.Common.Nullable GHC.Types.Int)
  -- | completed_at: The Unix timestamp (in seconds) for when the run was completed.
  , runObjectCompletedAt :: (OpenAIGen.Common.Nullable GHC.Types.Int)
  -- | created_at: The Unix timestamp (in seconds) for when the run was created.
  , runObjectCreatedAt :: GHC.Types.Int
  -- | expires_at: The Unix timestamp (in seconds) for when the run will expire.
  , runObjectExpiresAt :: GHC.Types.Int
  -- | failed_at: The Unix timestamp (in seconds) for when the run failed.
  , runObjectFailedAt :: (OpenAIGen.Common.Nullable GHC.Types.Int)
  -- | file_ids: The list of [File](\/docs\/api-reference\/files) IDs the [assistant](\/docs\/api-reference\/assistants) used for this run.
  , runObjectFileIds :: ([Data.Text.Internal.Text])
  -- | id: The identifier, which can be referenced in API endpoints.
  , runObjectId :: Data.Text.Internal.Text
  -- | instructions: The instructions that the [assistant](\/docs\/api-reference\/assistants) used for this run.
  , runObjectInstructions :: Data.Text.Internal.Text
  -- | last_error: The last error associated with this run. Will be \`null\` if there are no errors.
  , runObjectLastError :: (OpenAIGen.Common.Nullable RunObjectLastError'NonNullable)
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  , runObjectMetadata :: (OpenAIGen.Common.Nullable Data.Aeson.Types.Internal.Object)
  -- | model: The model that the [assistant](\/docs\/api-reference\/assistants) used for this run.
  , runObjectModel :: Data.Text.Internal.Text
  -- | required_action: Details on the action required to continue the run. Will be \`null\` if no action is required.
  , runObjectRequiredAction :: (OpenAIGen.Common.Nullable RunObjectRequiredAction'NonNullable)
  -- | started_at: The Unix timestamp (in seconds) for when the run was started.
  , runObjectStartedAt :: (OpenAIGen.Common.Nullable GHC.Types.Int)
  -- | status: The status of the run, which can be either \`queued\`, \`in_progress\`, \`requires_action\`, \`cancelling\`, \`cancelled\`, \`failed\`, \`completed\`, or \`expired\`.
  , runObjectStatus :: RunObjectStatus'
  -- | thread_id: The ID of the [thread](\/docs\/api-reference\/threads) that was executed on as a part of this run.
  , runObjectThreadId :: Data.Text.Internal.Text
  -- | tools: The list of tools that the [assistant](\/docs\/api-reference\/assistants) used for this run.
  -- 
  -- Constraints:
  -- 
  -- * Must have a maximum of 20 items
  , runObjectTools :: ([RunObjectTools'Variants])
  -- | usage: Usage statistics related to the run. This value will be \`null\` if the run is not in a terminal state (i.e. \`in_progress\`, \`queued\`, etc.).
  , runObjectUsage :: RunCompletionUsage
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= runObjectAssistantId obj] : ["cancelled_at" Data.Aeson.Types.ToJSON..= runObjectCancelledAt obj] : ["completed_at" Data.Aeson.Types.ToJSON..= runObjectCompletedAt obj] : ["created_at" Data.Aeson.Types.ToJSON..= runObjectCreatedAt obj] : ["expires_at" Data.Aeson.Types.ToJSON..= runObjectExpiresAt obj] : ["failed_at" Data.Aeson.Types.ToJSON..= runObjectFailedAt obj] : ["file_ids" Data.Aeson.Types.ToJSON..= runObjectFileIds obj] : ["id" Data.Aeson.Types.ToJSON..= runObjectId obj] : ["instructions" Data.Aeson.Types.ToJSON..= runObjectInstructions obj] : ["last_error" Data.Aeson.Types.ToJSON..= runObjectLastError obj] : ["metadata" Data.Aeson.Types.ToJSON..= runObjectMetadata obj] : ["model" Data.Aeson.Types.ToJSON..= runObjectModel obj] : ["required_action" Data.Aeson.Types.ToJSON..= runObjectRequiredAction obj] : ["started_at" Data.Aeson.Types.ToJSON..= runObjectStartedAt obj] : ["status" Data.Aeson.Types.ToJSON..= runObjectStatus obj] : ["thread_id" Data.Aeson.Types.ToJSON..= runObjectThreadId obj] : ["tools" Data.Aeson.Types.ToJSON..= runObjectTools obj] : ["usage" Data.Aeson.Types.ToJSON..= runObjectUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.run"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= runObjectAssistantId obj] : ["cancelled_at" Data.Aeson.Types.ToJSON..= runObjectCancelledAt obj] : ["completed_at" Data.Aeson.Types.ToJSON..= runObjectCompletedAt obj] : ["created_at" Data.Aeson.Types.ToJSON..= runObjectCreatedAt obj] : ["expires_at" Data.Aeson.Types.ToJSON..= runObjectExpiresAt obj] : ["failed_at" Data.Aeson.Types.ToJSON..= runObjectFailedAt obj] : ["file_ids" Data.Aeson.Types.ToJSON..= runObjectFileIds obj] : ["id" Data.Aeson.Types.ToJSON..= runObjectId obj] : ["instructions" Data.Aeson.Types.ToJSON..= runObjectInstructions obj] : ["last_error" Data.Aeson.Types.ToJSON..= runObjectLastError obj] : ["metadata" Data.Aeson.Types.ToJSON..= runObjectMetadata obj] : ["model" Data.Aeson.Types.ToJSON..= runObjectModel obj] : ["required_action" Data.Aeson.Types.ToJSON..= runObjectRequiredAction obj] : ["started_at" Data.Aeson.Types.ToJSON..= runObjectStartedAt obj] : ["status" Data.Aeson.Types.ToJSON..= runObjectStatus obj] : ["thread_id" Data.Aeson.Types.ToJSON..= runObjectThreadId obj] : ["tools" Data.Aeson.Types.ToJSON..= runObjectTools obj] : ["usage" Data.Aeson.Types.ToJSON..= runObjectUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.run"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunObject" (\obj -> (((((((((((((((((GHC.Base.pure RunObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assistant_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cancelled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "completed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "failed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "instructions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "required_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "thread_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tools")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage"))}
-- | Create a new 'RunObject' with all required fields.
mkRunObject :: Data.Text.Internal.Text -- ^ 'runObjectAssistantId'
  -> OpenAIGen.Common.Nullable GHC.Types.Int -- ^ 'runObjectCancelledAt'
  -> OpenAIGen.Common.Nullable GHC.Types.Int -- ^ 'runObjectCompletedAt'
  -> GHC.Types.Int -- ^ 'runObjectCreatedAt'
  -> GHC.Types.Int -- ^ 'runObjectExpiresAt'
  -> OpenAIGen.Common.Nullable GHC.Types.Int -- ^ 'runObjectFailedAt'
  -> [Data.Text.Internal.Text] -- ^ 'runObjectFileIds'
  -> Data.Text.Internal.Text -- ^ 'runObjectId'
  -> Data.Text.Internal.Text -- ^ 'runObjectInstructions'
  -> OpenAIGen.Common.Nullable RunObjectLastError'NonNullable -- ^ 'runObjectLastError'
  -> OpenAIGen.Common.Nullable Data.Aeson.Types.Internal.Object -- ^ 'runObjectMetadata'
  -> Data.Text.Internal.Text -- ^ 'runObjectModel'
  -> OpenAIGen.Common.Nullable RunObjectRequiredAction'NonNullable -- ^ 'runObjectRequiredAction'
  -> OpenAIGen.Common.Nullable GHC.Types.Int -- ^ 'runObjectStartedAt'
  -> RunObjectStatus' -- ^ 'runObjectStatus'
  -> Data.Text.Internal.Text -- ^ 'runObjectThreadId'
  -> [RunObjectTools'Variants] -- ^ 'runObjectTools'
  -> RunCompletionUsage -- ^ 'runObjectUsage'
  -> RunObject
mkRunObject runObjectAssistantId runObjectCancelledAt runObjectCompletedAt runObjectCreatedAt runObjectExpiresAt runObjectFailedAt runObjectFileIds runObjectId runObjectInstructions runObjectLastError runObjectMetadata runObjectModel runObjectRequiredAction runObjectStartedAt runObjectStatus runObjectThreadId runObjectTools runObjectUsage = RunObject{runObjectAssistantId = runObjectAssistantId,
                                                                                                                                                                                                                                                                                                                                                                 runObjectCancelledAt = runObjectCancelledAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectCompletedAt = runObjectCompletedAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectCreatedAt = runObjectCreatedAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectExpiresAt = runObjectExpiresAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectFailedAt = runObjectFailedAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectFileIds = runObjectFileIds,
                                                                                                                                                                                                                                                                                                                                                                 runObjectId = runObjectId,
                                                                                                                                                                                                                                                                                                                                                                 runObjectInstructions = runObjectInstructions,
                                                                                                                                                                                                                                                                                                                                                                 runObjectLastError = runObjectLastError,
                                                                                                                                                                                                                                                                                                                                                                 runObjectMetadata = runObjectMetadata,
                                                                                                                                                                                                                                                                                                                                                                 runObjectModel = runObjectModel,
                                                                                                                                                                                                                                                                                                                                                                 runObjectRequiredAction = runObjectRequiredAction,
                                                                                                                                                                                                                                                                                                                                                                 runObjectStartedAt = runObjectStartedAt,
                                                                                                                                                                                                                                                                                                                                                                 runObjectStatus = runObjectStatus,
                                                                                                                                                                                                                                                                                                                                                                 runObjectThreadId = runObjectThreadId,
                                                                                                                                                                                                                                                                                                                                                                 runObjectTools = runObjectTools,
                                                                                                                                                                                                                                                                                                                                                                 runObjectUsage = runObjectUsage}
-- | Defines the object schema located at @components.schemas.RunObject.properties.last_error@ in the specification.
-- 
-- The last error associated with this run. Will be \`null\` if there are no errors.
data RunObjectLastError'NonNullable = RunObjectLastError'NonNullable {
  -- | code: One of \`server_error\` or \`rate_limit_exceeded\`.
  runObjectLastError'NonNullableCode :: RunObjectLastError'NonNullableCode'
  -- | message: A human-readable description of the error.
  , runObjectLastError'NonNullableMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectLastError'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= runObjectLastError'NonNullableCode obj] : ["message" Data.Aeson.Types.ToJSON..= runObjectLastError'NonNullableMessage obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= runObjectLastError'NonNullableCode obj] : ["message" Data.Aeson.Types.ToJSON..= runObjectLastError'NonNullableMessage obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectLastError'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunObjectLastError'NonNullable" (\obj -> (GHC.Base.pure RunObjectLastError'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))}
-- | Create a new 'RunObjectLastError'NonNullable' with all required fields.
mkRunObjectLastError'NonNullable :: RunObjectLastError'NonNullableCode' -- ^ 'runObjectLastError'NonNullableCode'
  -> Data.Text.Internal.Text -- ^ 'runObjectLastError'NonNullableMessage'
  -> RunObjectLastError'NonNullable
mkRunObjectLastError'NonNullable runObjectLastError'NonNullableCode runObjectLastError'NonNullableMessage = RunObjectLastError'NonNullable{runObjectLastError'NonNullableCode = runObjectLastError'NonNullableCode,
                                                                                                                                           runObjectLastError'NonNullableMessage = runObjectLastError'NonNullableMessage}
-- | Defines the enum schema located at @components.schemas.RunObject.properties.last_error.properties.code@ in the specification.
-- 
-- One of \`server_error\` or \`rate_limit_exceeded\`.
data RunObjectLastError'NonNullableCode' =
   RunObjectLastError'NonNullableCode'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RunObjectLastError'NonNullableCode'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RunObjectLastError'NonNullableCode'EnumServerError -- ^ Represents the JSON value @"server_error"@
  | RunObjectLastError'NonNullableCode'EnumRateLimitExceeded -- ^ Represents the JSON value @"rate_limit_exceeded"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectLastError'NonNullableCode'
    where {toJSON (RunObjectLastError'NonNullableCode'Other val) = val;
           toJSON (RunObjectLastError'NonNullableCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (RunObjectLastError'NonNullableCode'EnumServerError) = "server_error";
           toJSON (RunObjectLastError'NonNullableCode'EnumRateLimitExceeded) = "rate_limit_exceeded"}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectLastError'NonNullableCode'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "server_error" -> RunObjectLastError'NonNullableCode'EnumServerError
                                             | val GHC.Classes.== "rate_limit_exceeded" -> RunObjectLastError'NonNullableCode'EnumRateLimitExceeded
                                             | GHC.Base.otherwise -> RunObjectLastError'NonNullableCode'Other val)}
-- | Defines the object schema located at @components.schemas.RunObject.properties.required_action@ in the specification.
-- 
-- Details on the action required to continue the run. Will be \`null\` if no action is required.
data RunObjectRequiredAction'NonNullable = RunObjectRequiredAction'NonNullable {
  -- | submit_tool_outputs: Details on the tool outputs needed for this run to continue.
  runObjectRequiredAction'NonNullableSubmitToolOutputs :: RunObjectRequiredAction'NonNullableSubmitToolOutputs'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectRequiredAction'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["submit_tool_outputs" Data.Aeson.Types.ToJSON..= runObjectRequiredAction'NonNullableSubmitToolOutputs obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "submit_tool_outputs"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["submit_tool_outputs" Data.Aeson.Types.ToJSON..= runObjectRequiredAction'NonNullableSubmitToolOutputs obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "submit_tool_outputs"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectRequiredAction'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunObjectRequiredAction'NonNullable" (\obj -> GHC.Base.pure RunObjectRequiredAction'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "submit_tool_outputs"))}
-- | Create a new 'RunObjectRequiredAction'NonNullable' with all required fields.
mkRunObjectRequiredAction'NonNullable :: RunObjectRequiredAction'NonNullableSubmitToolOutputs' -- ^ 'runObjectRequiredAction'NonNullableSubmitToolOutputs'
  -> RunObjectRequiredAction'NonNullable
mkRunObjectRequiredAction'NonNullable runObjectRequiredAction'NonNullableSubmitToolOutputs = RunObjectRequiredAction'NonNullable{runObjectRequiredAction'NonNullableSubmitToolOutputs = runObjectRequiredAction'NonNullableSubmitToolOutputs}
-- | Defines the object schema located at @components.schemas.RunObject.properties.required_action.properties.submit_tool_outputs@ in the specification.
-- 
-- Details on the tool outputs needed for this run to continue.
data RunObjectRequiredAction'NonNullableSubmitToolOutputs' = RunObjectRequiredAction'NonNullableSubmitToolOutputs' {
  -- | tool_calls: A list of the relevant tool calls.
  runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls :: ([RunToolCallObject])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectRequiredAction'NonNullableSubmitToolOutputs'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tool_calls" Data.Aeson.Types.ToJSON..= runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tool_calls" Data.Aeson.Types.ToJSON..= runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectRequiredAction'NonNullableSubmitToolOutputs'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunObjectRequiredAction'NonNullableSubmitToolOutputs'" (\obj -> GHC.Base.pure RunObjectRequiredAction'NonNullableSubmitToolOutputs' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tool_calls"))}
-- | Create a new 'RunObjectRequiredAction'NonNullableSubmitToolOutputs'' with all required fields.
mkRunObjectRequiredAction'NonNullableSubmitToolOutputs' :: [RunToolCallObject] -- ^ 'runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls'
  -> RunObjectRequiredAction'NonNullableSubmitToolOutputs'
mkRunObjectRequiredAction'NonNullableSubmitToolOutputs' runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls = RunObjectRequiredAction'NonNullableSubmitToolOutputs'{runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls = runObjectRequiredAction'NonNullableSubmitToolOutputs'ToolCalls}
-- | Defines the enum schema located at @components.schemas.RunObject.properties.status@ in the specification.
-- 
-- The status of the run, which can be either \`queued\`, \`in_progress\`, \`requires_action\`, \`cancelling\`, \`cancelled\`, \`failed\`, \`completed\`, or \`expired\`.
data RunObjectStatus' =
   RunObjectStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RunObjectStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RunObjectStatus'EnumQueued -- ^ Represents the JSON value @"queued"@
  | RunObjectStatus'EnumInProgress -- ^ Represents the JSON value @"in_progress"@
  | RunObjectStatus'EnumRequiresAction -- ^ Represents the JSON value @"requires_action"@
  | RunObjectStatus'EnumCancelling -- ^ Represents the JSON value @"cancelling"@
  | RunObjectStatus'EnumCancelled -- ^ Represents the JSON value @"cancelled"@
  | RunObjectStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | RunObjectStatus'EnumCompleted -- ^ Represents the JSON value @"completed"@
  | RunObjectStatus'EnumExpired -- ^ Represents the JSON value @"expired"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectStatus'
    where {toJSON (RunObjectStatus'Other val) = val;
           toJSON (RunObjectStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (RunObjectStatus'EnumQueued) = "queued";
           toJSON (RunObjectStatus'EnumInProgress) = "in_progress";
           toJSON (RunObjectStatus'EnumRequiresAction) = "requires_action";
           toJSON (RunObjectStatus'EnumCancelling) = "cancelling";
           toJSON (RunObjectStatus'EnumCancelled) = "cancelled";
           toJSON (RunObjectStatus'EnumFailed) = "failed";
           toJSON (RunObjectStatus'EnumCompleted) = "completed";
           toJSON (RunObjectStatus'EnumExpired) = "expired"}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "queued" -> RunObjectStatus'EnumQueued
                                             | val GHC.Classes.== "in_progress" -> RunObjectStatus'EnumInProgress
                                             | val GHC.Classes.== "requires_action" -> RunObjectStatus'EnumRequiresAction
                                             | val GHC.Classes.== "cancelling" -> RunObjectStatus'EnumCancelling
                                             | val GHC.Classes.== "cancelled" -> RunObjectStatus'EnumCancelled
                                             | val GHC.Classes.== "failed" -> RunObjectStatus'EnumFailed
                                             | val GHC.Classes.== "completed" -> RunObjectStatus'EnumCompleted
                                             | val GHC.Classes.== "expired" -> RunObjectStatus'EnumExpired
                                             | GHC.Base.otherwise -> RunObjectStatus'Other val)}
-- | Defines the oneOf schema located at @components.schemas.RunObject.properties.tools.items.oneOf@ in the specification.
-- 
-- 
data RunObjectTools'Variants =
   RunObjectTools'AssistantToolsCode AssistantToolsCode
  | RunObjectTools'AssistantToolsRetrieval AssistantToolsRetrieval
  | RunObjectTools'AssistantToolsFunction AssistantToolsFunction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunObjectTools'Variants
    where {toJSON (RunObjectTools'AssistantToolsCode a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (RunObjectTools'AssistantToolsRetrieval a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (RunObjectTools'AssistantToolsFunction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON RunObjectTools'Variants
    where {parseJSON val = case (RunObjectTools'AssistantToolsCode Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RunObjectTools'AssistantToolsRetrieval Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RunObjectTools'AssistantToolsFunction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}