-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getRun
module OpenAIGen.Operations.GetRun where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified OpenAIGen.Common
import OpenAIGen.Types

-- | > GET /threads/{thread_id}/runs/{run_id}
-- 
-- Retrieves a run.
getRun :: forall m . OpenAIGen.Common.MonadHTTP m => GetRunParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAIGen.Common.ClientT m (Network.HTTP.Client.Types.Response GetRunOpResponse) -- ^ Monadic computation which returns the result of the operation
getRun parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetRunOpResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRunOpResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                               RunObject)
                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAIGen.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/threads/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (getRunParametersPathThreadId parameters))) GHC.Base.<> ("/runs/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (getRunParametersPathRunId parameters))) GHC.Base.<> "")))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/threads\/{thread_id}\/runs\/{run_id}.GET.parameters@ in the specification.
-- 
-- 
data GetRunParameters = GetRunParameters {
  -- | pathRun_id: Represents the parameter named \'run_id\'
  -- 
  -- The ID of the run to retrieve.
  getRunParametersPathRunId :: Data.Text.Internal.Text
  -- | pathThread_id: Represents the parameter named \'thread_id\'
  -- 
  -- The ID of the [thread](\/docs\/api-reference\/threads) that was run.
  , getRunParametersPathThreadId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetRunParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathRun_id" Data.Aeson.Types.ToJSON..= getRunParametersPathRunId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= getRunParametersPathThreadId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathRun_id" Data.Aeson.Types.ToJSON..= getRunParametersPathRunId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= getRunParametersPathThreadId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetRunParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRunParameters" (\obj -> (GHC.Base.pure GetRunParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRun_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThread_id"))}
-- | Create a new 'GetRunParameters' with all required fields.
mkGetRunParameters :: Data.Text.Internal.Text -- ^ 'getRunParametersPathRunId'
  -> Data.Text.Internal.Text -- ^ 'getRunParametersPathThreadId'
  -> GetRunParameters
mkGetRunParameters getRunParametersPathRunId getRunParametersPathThreadId = GetRunParameters{getRunParametersPathRunId = getRunParametersPathRunId,
                                                                                             getRunParametersPathThreadId = getRunParametersPathThreadId}
-- | Represents a response of the operation 'getRun'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRunOpResponseError' is used.
data GetRunOpResponse =
   GetRunOpResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetRunOpResponse200 RunObject -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
