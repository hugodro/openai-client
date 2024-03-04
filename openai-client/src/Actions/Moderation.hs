{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Moderation (
  ModerationVerb(..)
) where

data ModerationVerb =
  CreateModeration CreateModerationParams
  | RespondModeration RespondModerationParams


data CreateModerationParams = CreateModerationParams
data RespondModerationParams = RespondModerationParams

