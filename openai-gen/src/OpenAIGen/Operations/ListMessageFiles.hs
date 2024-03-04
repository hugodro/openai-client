-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation listMessageFiles
module OpenAIGen.Operations.ListMessageFiles where

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

-- | > GET /threads/{thread_id}/messages/{message_id}/files
-- 
-- Returns a list of message files.
listMessageFiles :: forall m . OpenAIGen.Common.MonadHTTP m => ListMessageFilesParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAIGen.Common.ClientT m (Network.HTTP.Client.Types.Response ListMessageFilesOpResponse) -- ^ Monadic computation which returns the result of the operation
listMessageFiles parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ListMessageFilesOpResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ListMessageFilesOpResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             ListMessageFilesResponse)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAIGen.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/threads/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (listMessageFilesParametersPathThreadId parameters))) GHC.Base.<> ("/messages/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (listMessageFilesParametersPathMessageId parameters))) GHC.Base.<> "/files")))) [OpenAIGen.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessageFilesParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAIGen.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessageFilesParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAIGen.Common.QueryParameter (Data.Text.Internal.pack "after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessageFilesParametersQueryAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAIGen.Common.QueryParameter (Data.Text.Internal.pack "before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessageFilesParametersQueryBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/threads\/{thread_id}\/messages\/{message_id}\/files.GET.parameters@ in the specification.
-- 
-- 
data ListMessageFilesParameters = ListMessageFilesParameters {
  -- | pathMessage_id: Represents the parameter named \'message_id\'
  -- 
  -- The ID of the message that the files belongs to.
  listMessageFilesParametersPathMessageId :: Data.Text.Internal.Text
  -- | pathThread_id: Represents the parameter named \'thread_id\'
  -- 
  -- The ID of the thread that the message and files belong to.
  , listMessageFilesParametersPathThreadId :: Data.Text.Internal.Text
  -- | queryAfter: Represents the parameter named \'after\'
  -- 
  -- A cursor for use in pagination. \`after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.
  , listMessageFilesParametersQueryAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryBefore: Represents the parameter named \'before\'
  -- 
  -- A cursor for use in pagination. \`before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.
  , listMessageFilesParametersQueryBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.
  , listMessageFilesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryOrder: Represents the parameter named \'order\'
  -- 
  -- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
  , listMessageFilesParametersQueryOrder :: (GHC.Maybe.Maybe ListMessageFilesParametersQueryOrder')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListMessageFilesParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathMessage_id" Data.Aeson.Types.ToJSON..= listMessageFilesParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= listMessageFilesParametersPathThreadId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryOrder obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathMessage_id" Data.Aeson.Types.ToJSON..= listMessageFilesParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= listMessageFilesParametersPathThreadId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listMessageFilesParametersQueryOrder obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListMessageFilesParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListMessageFilesParameters" (\obj -> (((((GHC.Base.pure ListMessageFilesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathMessage_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThread_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAfter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBefore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrder"))}
-- | Create a new 'ListMessageFilesParameters' with all required fields.
mkListMessageFilesParameters :: Data.Text.Internal.Text -- ^ 'listMessageFilesParametersPathMessageId'
  -> Data.Text.Internal.Text -- ^ 'listMessageFilesParametersPathThreadId'
  -> ListMessageFilesParameters
mkListMessageFilesParameters listMessageFilesParametersPathMessageId listMessageFilesParametersPathThreadId = ListMessageFilesParameters{listMessageFilesParametersPathMessageId = listMessageFilesParametersPathMessageId,
                                                                                                                                         listMessageFilesParametersPathThreadId = listMessageFilesParametersPathThreadId,
                                                                                                                                         listMessageFilesParametersQueryAfter = GHC.Maybe.Nothing,
                                                                                                                                         listMessageFilesParametersQueryBefore = GHC.Maybe.Nothing,
                                                                                                                                         listMessageFilesParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                         listMessageFilesParametersQueryOrder = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/threads\/{thread_id}\/messages\/{message_id}\/files.GET.parameters.properties.queryOrder@ in the specification.
-- 
-- Represents the parameter named \'order\'
-- 
-- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
data ListMessageFilesParametersQueryOrder' =
   ListMessageFilesParametersQueryOrder'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ListMessageFilesParametersQueryOrder'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ListMessageFilesParametersQueryOrder'EnumAsc -- ^ Represents the JSON value @"asc"@
  | ListMessageFilesParametersQueryOrder'EnumDesc -- ^ Represents the JSON value @"desc"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListMessageFilesParametersQueryOrder'
    where {toJSON (ListMessageFilesParametersQueryOrder'Other val) = val;
           toJSON (ListMessageFilesParametersQueryOrder'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ListMessageFilesParametersQueryOrder'EnumAsc) = "asc";
           toJSON (ListMessageFilesParametersQueryOrder'EnumDesc) = "desc"}
instance Data.Aeson.Types.FromJSON.FromJSON ListMessageFilesParametersQueryOrder'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "asc" -> ListMessageFilesParametersQueryOrder'EnumAsc
                                             | val GHC.Classes.== "desc" -> ListMessageFilesParametersQueryOrder'EnumDesc
                                             | GHC.Base.otherwise -> ListMessageFilesParametersQueryOrder'Other val)}
-- | Represents a response of the operation 'listMessageFiles'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ListMessageFilesOpResponseError' is used.
data ListMessageFilesOpResponse =
   ListMessageFilesOpResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ListMessageFilesOpResponse200 ListMessageFilesResponse -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
