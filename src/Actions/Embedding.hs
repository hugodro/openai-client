{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Embedding (
  EmbeddingVerb(..)
) where

data EmbeddingVerb =
  Embed EmbedParams
  | FetchEmbed FetchEmbedParams


data EmbedParams = EmbedParams
data FetchEmbedParams = FetchEmbedParams

