{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Thread (
  ThreadVerb(..)
) where

data ThreadVerb =
  CreateThread CreateThreadParams
  | GetThread GetThreadParams
  | ModifyThread ModifyThreadParams
  | DeleteThread DeleteThreadParams
  | ObjectThread ObjectThreadParams

data CreateThreadParams = CreateThreadParams
data GetThreadParams = GetThreadParams
data ModifyThreadParams = ModifyThreadParams
data DeleteThreadParams = DeleteThreadParams
data ObjectThreadParams = ObjectThreadParams
