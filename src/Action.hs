{-# OPTIONS_GHC -Wno-unused-matches -Wno-unused-top-binds #-}

module Action where

import Actions.Assistant (AssistantVerb)
import Actions.Audio (AudioVerb)
import Actions.Chat (ChatVerb)
import Actions.Completion (CompletionVerb)
import Actions.Embedding (EmbeddingVerb)
import Actions.Files (FilesVerb)
import Actions.FineTune (FineTuneVerb)
import Actions.Image (ImageVerb)
import Actions.Message (MessageVerb)
import Actions.Model (ModelVerb)
import Actions.Moderation (ModerationVerb)
import Actions.Runs (RunVerb)
import Actions.Thread (ThreadVerb)


data Action context =
  Assistant AssistantVerb context
  | Audio AudioVerb context
  | Chat ChatVerb context
  | Completion CompletionVerb context
  | Embedding EmbeddingVerb context
  | Files FilesVerb context
  | FineTune FineTuneVerb context
  | Image ImageVerb context
  | Message MessageVerb context
  | Model ModelVerb context
  | Moderation ModerationVerb context
  | Run RunVerb context
  | Thread ThreadVerb context
