-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getMessageFile
module OpenAIGen.Operations.GetMessageFile where

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

-- | > GET /threads/{thread_id}/messages/{message_id}/files/{file_id}
-- 
-- Retrieves a message file.
getMessageFile :: forall m . OpenAIGen.Common.MonadHTTP m => GetMessageFileParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAIGen.Common.ClientT m (Network.HTTP.Client.Types.Response GetMessageFileOpResponse) -- ^ Monadic computation which returns the result of the operation
getMessageFile parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetMessageFileOpResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetMessageFileOpResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       MessageFileObject)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAIGen.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/threads/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (getMessageFileParametersPathThreadId parameters))) GHC.Base.<> ("/messages/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (getMessageFileParametersPathMessageId parameters))) GHC.Base.<> ("/files/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel (getMessageFileParametersPathFileId parameters))) GHC.Base.<> "")))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/threads\/{thread_id}\/messages\/{message_id}\/files\/{file_id}.GET.parameters@ in the specification.
-- 
-- 
data GetMessageFileParameters = GetMessageFileParameters {
  -- | pathFile_id: Represents the parameter named \'file_id\'
  -- 
  -- The ID of the file being retrieved.
  getMessageFileParametersPathFileId :: Data.Text.Internal.Text
  -- | pathMessage_id: Represents the parameter named \'message_id\'
  -- 
  -- The ID of the message the file belongs to.
  , getMessageFileParametersPathMessageId :: Data.Text.Internal.Text
  -- | pathThread_id: Represents the parameter named \'thread_id\'
  -- 
  -- The ID of the thread to which the message and File belong.
  , getMessageFileParametersPathThreadId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMessageFileParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathFile_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathFileId obj] : ["pathMessage_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathThreadId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathFile_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathFileId obj] : ["pathMessage_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= getMessageFileParametersPathThreadId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetMessageFileParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMessageFileParameters" (\obj -> ((GHC.Base.pure GetMessageFileParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathFile_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathMessage_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThread_id"))}
-- | Create a new 'GetMessageFileParameters' with all required fields.
mkGetMessageFileParameters :: Data.Text.Internal.Text -- ^ 'getMessageFileParametersPathFileId'
  -> Data.Text.Internal.Text -- ^ 'getMessageFileParametersPathMessageId'
  -> Data.Text.Internal.Text -- ^ 'getMessageFileParametersPathThreadId'
  -> GetMessageFileParameters
mkGetMessageFileParameters getMessageFileParametersPathFileId getMessageFileParametersPathMessageId getMessageFileParametersPathThreadId = GetMessageFileParameters{getMessageFileParametersPathFileId = getMessageFileParametersPathFileId,
                                                                                                                                                                    getMessageFileParametersPathMessageId = getMessageFileParametersPathMessageId,
                                                                                                                                                                    getMessageFileParametersPathThreadId = getMessageFileParametersPathThreadId}
-- | Represents a response of the operation 'getMessageFile'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetMessageFileOpResponseError' is used.
data GetMessageFileOpResponse =
   GetMessageFileOpResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetMessageFileOpResponse200 MessageFileObject -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
