{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

 module Actions.Message (
    MessageVerb(..)
 )
 where

data MessageVerb =
  CreateMessage CreateMessageParams
  | ListMessages ListMessagesParams
  | ListFileMessage ListFileMessageParams
  | GetMessage GetMessageParams
  | GetFileMessage GetFileMessageParams
  | ModifyMessage ModifyMessageParams
  | ObjectMessage ObjectMessageParams
  | ObjectFileMessage ObjectFileMessageParams


data CreateMessageParams = CreateMessageParams
data ListMessagesParams = ListMessagesParams
data ListFileMessageParams = ListFileMessageParams
data GetMessageParams = GetMessageParams
data GetFileMessageParams = GetFileMessageParams
data ModifyMessageParams = ModifyMessageParams
data ObjectMessageParams = ObjectMessageParams
data ObjectFileMessageParams = ObjectFileMessageParams

