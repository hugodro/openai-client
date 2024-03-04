{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Completion (
  CompletionVerb(..)
) where


data CompletionVerb =
  SimpleCompltion SimpleCompletionParams
  | SimpleRespondCompletion SimpleRespondCompletionParams


data SimpleCompletionParams = SimpleCompletionParams
data SimpleRespondCompletionParams = SimpleRespondCompletionParams
