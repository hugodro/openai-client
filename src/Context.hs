module Context where

import Data.Text (Text)

import OpenAIGen.Configuration (defaultConfiguration)
import OpenAIGen.SecuritySchemes (bearerAuthenticationSecurityScheme)
import OpenAIGen.Common (Configuration(..))

data Context =
  Simple Text Text

convertSimpleContext :: Text -> Text -> (Text -> modelID) -> (Configuration, modelID)
convertSimpleContext token modelName modelConverter = 
  let
    defaultConf = defaultConfiguration { configSecurityScheme = bearerAuthenticationSecurityScheme token }
    modelID = modelConverter modelName
  in (defaultConf, modelID)

type TError = String
data Result =
  NilResult
  | TextResult Text
  deriving (Eq, Show)
