-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AssistantToolsCode
module OpenAIGen.Types.AssistantToolsCode where

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

-- | Defines the object schema located at @components.schemas.AssistantToolsCode@ in the specification.
-- 
-- 
data AssistantToolsCode = AssistantToolsCode {

  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AssistantToolsCode
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "code_interpreter"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "code_interpreter"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON AssistantToolsCode
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "AssistantToolsCode" (\obj -> GHC.Base.pure AssistantToolsCode)}
-- | Create a new 'AssistantToolsCode' with all required fields.
mkAssistantToolsCode :: AssistantToolsCode
mkAssistantToolsCode = AssistantToolsCode{}