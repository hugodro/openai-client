-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ImagesResponse
module OpenAIGen.Types.ImagesResponse where

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
import {-# SOURCE #-} OpenAIGen.Types.Image

-- | Defines the object schema located at @components.schemas.ImagesResponse@ in the specification.
-- 
-- 
data ImagesResponse = ImagesResponse {
  -- | created
  imagesResponseCreated :: GHC.Types.Int
  -- | data
  , imagesResponseData :: ([Image])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ImagesResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= imagesResponseCreated obj] : ["data" Data.Aeson.Types.ToJSON..= imagesResponseData obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= imagesResponseCreated obj] : ["data" Data.Aeson.Types.ToJSON..= imagesResponseData obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ImagesResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ImagesResponse" (\obj -> (GHC.Base.pure ImagesResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data"))}
-- | Create a new 'ImagesResponse' with all required fields.
mkImagesResponse :: GHC.Types.Int -- ^ 'imagesResponseCreated'
  -> [Image] -- ^ 'imagesResponseData'
  -> ImagesResponse
mkImagesResponse imagesResponseCreated imagesResponseData = ImagesResponse{imagesResponseCreated = imagesResponseCreated,
                                                                           imagesResponseData = imagesResponseData}
