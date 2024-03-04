-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatCompletionTokenLogprob
module OpenAIGen.Types.ChatCompletionTokenLogprob where

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

-- | Defines the object schema located at @components.schemas.ChatCompletionTokenLogprob@ in the specification.
-- 
-- 
data ChatCompletionTokenLogprob = ChatCompletionTokenLogprob {
  -- | bytes: A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be \`null\` if there is no bytes representation for the token.
  chatCompletionTokenLogprobBytes :: (OpenAIGen.Common.Nullable ([GHC.Types.Int]))
  -- | logprob: The log probability of this token.
  , chatCompletionTokenLogprobLogprob :: GHC.Types.Double
  -- | token: The token.
  , chatCompletionTokenLogprobToken :: Data.Text.Internal.Text
  -- | top_logprobs: List of the most likely tokens and their log probability, at this token position. In rare cases, there may be fewer than the number of requested \`top_logprobs\` returned.
  , chatCompletionTokenLogprobTopLogprobs :: ([ChatCompletionTokenLogprobTopLogprobs'])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionTokenLogprob
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["bytes" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobBytes obj] : ["logprob" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobLogprob obj] : ["token" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobToken obj] : ["top_logprobs" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["bytes" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobBytes obj] : ["logprob" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobLogprob obj] : ["token" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobToken obj] : ["top_logprobs" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionTokenLogprob
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionTokenLogprob" (\obj -> (((GHC.Base.pure ChatCompletionTokenLogprob GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bytes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "logprob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "top_logprobs"))}
-- | Create a new 'ChatCompletionTokenLogprob' with all required fields.
mkChatCompletionTokenLogprob :: OpenAIGen.Common.Nullable ([GHC.Types.Int]) -- ^ 'chatCompletionTokenLogprobBytes'
  -> GHC.Types.Double -- ^ 'chatCompletionTokenLogprobLogprob'
  -> Data.Text.Internal.Text -- ^ 'chatCompletionTokenLogprobToken'
  -> [ChatCompletionTokenLogprobTopLogprobs'] -- ^ 'chatCompletionTokenLogprobTopLogprobs'
  -> ChatCompletionTokenLogprob
mkChatCompletionTokenLogprob chatCompletionTokenLogprobBytes chatCompletionTokenLogprobLogprob chatCompletionTokenLogprobToken chatCompletionTokenLogprobTopLogprobs = ChatCompletionTokenLogprob{chatCompletionTokenLogprobBytes = chatCompletionTokenLogprobBytes,
                                                                                                                                                                                                  chatCompletionTokenLogprobLogprob = chatCompletionTokenLogprobLogprob,
                                                                                                                                                                                                  chatCompletionTokenLogprobToken = chatCompletionTokenLogprobToken,
                                                                                                                                                                                                  chatCompletionTokenLogprobTopLogprobs = chatCompletionTokenLogprobTopLogprobs}
-- | Defines the object schema located at @components.schemas.ChatCompletionTokenLogprob.properties.top_logprobs.items@ in the specification.
-- 
-- 
data ChatCompletionTokenLogprobTopLogprobs' = ChatCompletionTokenLogprobTopLogprobs' {
  -- | bytes: A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be \`null\` if there is no bytes representation for the token.
  chatCompletionTokenLogprobTopLogprobs'Bytes :: (OpenAIGen.Common.Nullable ([GHC.Types.Int]))
  -- | logprob: The log probability of this token.
  , chatCompletionTokenLogprobTopLogprobs'Logprob :: GHC.Types.Double
  -- | token: The token.
  , chatCompletionTokenLogprobTopLogprobs'Token :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionTokenLogprobTopLogprobs'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["bytes" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Bytes obj] : ["logprob" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Logprob obj] : ["token" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Token obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["bytes" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Bytes obj] : ["logprob" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Logprob obj] : ["token" Data.Aeson.Types.ToJSON..= chatCompletionTokenLogprobTopLogprobs'Token obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionTokenLogprobTopLogprobs'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionTokenLogprobTopLogprobs'" (\obj -> ((GHC.Base.pure ChatCompletionTokenLogprobTopLogprobs' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bytes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "logprob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token"))}
-- | Create a new 'ChatCompletionTokenLogprobTopLogprobs'' with all required fields.
mkChatCompletionTokenLogprobTopLogprobs' :: OpenAIGen.Common.Nullable ([GHC.Types.Int]) -- ^ 'chatCompletionTokenLogprobTopLogprobs'Bytes'
  -> GHC.Types.Double -- ^ 'chatCompletionTokenLogprobTopLogprobs'Logprob'
  -> Data.Text.Internal.Text -- ^ 'chatCompletionTokenLogprobTopLogprobs'Token'
  -> ChatCompletionTokenLogprobTopLogprobs'
mkChatCompletionTokenLogprobTopLogprobs' chatCompletionTokenLogprobTopLogprobs'Bytes chatCompletionTokenLogprobTopLogprobs'Logprob chatCompletionTokenLogprobTopLogprobs'Token = ChatCompletionTokenLogprobTopLogprobs'{chatCompletionTokenLogprobTopLogprobs'Bytes = chatCompletionTokenLogprobTopLogprobs'Bytes,
                                                                                                                                                                                                                        chatCompletionTokenLogprobTopLogprobs'Logprob = chatCompletionTokenLogprobTopLogprobs'Logprob,
                                                                                                                                                                                                                        chatCompletionTokenLogprobTopLogprobs'Token = chatCompletionTokenLogprobTopLogprobs'Token}
