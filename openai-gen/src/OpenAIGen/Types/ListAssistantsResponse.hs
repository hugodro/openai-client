-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ListAssistantsResponse
module OpenAIGen.Types.ListAssistantsResponse where

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
import {-# SOURCE #-} OpenAIGen.Types.AssistantObject

-- | Defines the object schema located at @components.schemas.ListAssistantsResponse@ in the specification.
-- 
-- 
data ListAssistantsResponse = ListAssistantsResponse {
  -- | data
  listAssistantsResponseData :: ([AssistantObject])
  -- | first_id
  , listAssistantsResponseFirstId :: Data.Text.Internal.Text
  -- | has_more
  , listAssistantsResponseHasMore :: GHC.Types.Bool
  -- | last_id
  , listAssistantsResponseLastId :: Data.Text.Internal.Text
  -- | object
  , listAssistantsResponseObject :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListAssistantsResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listAssistantsResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listAssistantsResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listAssistantsResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listAssistantsResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listAssistantsResponseObject obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listAssistantsResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listAssistantsResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listAssistantsResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listAssistantsResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listAssistantsResponseObject obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListAssistantsResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListAssistantsResponse" (\obj -> ((((GHC.Base.pure ListAssistantsResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))}
-- | Create a new 'ListAssistantsResponse' with all required fields.
mkListAssistantsResponse :: [AssistantObject] -- ^ 'listAssistantsResponseData'
  -> Data.Text.Internal.Text -- ^ 'listAssistantsResponseFirstId'
  -> GHC.Types.Bool -- ^ 'listAssistantsResponseHasMore'
  -> Data.Text.Internal.Text -- ^ 'listAssistantsResponseLastId'
  -> Data.Text.Internal.Text -- ^ 'listAssistantsResponseObject'
  -> ListAssistantsResponse
mkListAssistantsResponse listAssistantsResponseData listAssistantsResponseFirstId listAssistantsResponseHasMore listAssistantsResponseLastId listAssistantsResponseObject = ListAssistantsResponse{listAssistantsResponseData = listAssistantsResponseData,
                                                                                                                                                                                                   listAssistantsResponseFirstId = listAssistantsResponseFirstId,
                                                                                                                                                                                                   listAssistantsResponseHasMore = listAssistantsResponseHasMore,
                                                                                                                                                                                                   listAssistantsResponseLastId = listAssistantsResponseLastId,
                                                                                                                                                                                                   listAssistantsResponseObject = listAssistantsResponseObject}
