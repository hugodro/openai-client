-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ThreadObject
module OpenAIGen.Types.ThreadObject where

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

-- | Defines the object schema located at @components.schemas.ThreadObject@ in the specification.
-- 
-- Represents a thread that contains [messages](\/docs\/api-reference\/messages).
data ThreadObject = ThreadObject {
  -- | created_at: The Unix timestamp (in seconds) for when the thread was created.
  threadObjectCreatedAt :: GHC.Types.Int
  -- | id: The identifier, which can be referenced in API endpoints.
  , threadObjectId :: Data.Text.Internal.Text
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  , threadObjectMetadata :: (OpenAIGen.Common.Nullable Data.Aeson.Types.Internal.Object)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreadObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created_at" Data.Aeson.Types.ToJSON..= threadObjectCreatedAt obj] : ["id" Data.Aeson.Types.ToJSON..= threadObjectId obj] : ["metadata" Data.Aeson.Types.ToJSON..= threadObjectMetadata obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created_at" Data.Aeson.Types.ToJSON..= threadObjectCreatedAt obj] : ["id" Data.Aeson.Types.ToJSON..= threadObjectId obj] : ["metadata" Data.Aeson.Types.ToJSON..= threadObjectMetadata obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ThreadObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ThreadObject" (\obj -> ((GHC.Base.pure ThreadObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata"))}
-- | Create a new 'ThreadObject' with all required fields.
mkThreadObject :: GHC.Types.Int -- ^ 'threadObjectCreatedAt'
  -> Data.Text.Internal.Text -- ^ 'threadObjectId'
  -> OpenAIGen.Common.Nullable Data.Aeson.Types.Internal.Object -- ^ 'threadObjectMetadata'
  -> ThreadObject
mkThreadObject threadObjectCreatedAt threadObjectId threadObjectMetadata = ThreadObject{threadObjectCreatedAt = threadObjectCreatedAt,
                                                                                        threadObjectId = threadObjectId,
                                                                                        threadObjectMetadata = threadObjectMetadata}