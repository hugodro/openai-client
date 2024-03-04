-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation downloadFile
module OpenAIGen.Operations.DownloadFile where

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

-- | > GET /files/{file_id}/content
-- 
-- Returns the contents of the specified file.
downloadFile :: forall m . OpenAIGen.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ file_id: The ID of the file to use for this request.
  -> OpenAIGen.Common.ClientT m (Network.HTTP.Client.Types.Response DownloadFileOpResponse) -- ^ Monadic computation which returns the result of the operation
downloadFile fileId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DownloadFileOpResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DownloadFileOpResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Data.Text.Internal.Text)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAIGen.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/files/" GHC.Base.<> (OpenAIGen.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAIGen.Common.textToByte GHC.Base.$ OpenAIGen.Common.stringifyModel fileId)) GHC.Base.<> "/content")) GHC.Base.mempty)
-- | Represents a response of the operation 'downloadFile'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DownloadFileOpResponseError' is used.
data DownloadFileOpResponse =
   DownloadFileOpResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DownloadFileOpResponse200 Data.Text.Internal.Text -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
