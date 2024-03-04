{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Assistant (
  AssistantVerb(..)
) where


data AssistantVerb =
  CreateAssistant CreateAssistantParams
  | CreateFileAssistant CreateAssistantFileParams
  | ListAssistants ListAssistantsParams
  | ListFilesAssistant ListFilesAssistantParams
  | GetAssistant GetAssistantParams
  | GetFileAssistant GetFileAssistantParams
  | ModifyAssistant ModifyAssistantParams
  | DeleteAssistant DeleteAssistantParams
  | DeleteFileAssistant DeleteFileAssistantParams
  | ObjectAssistant ObjectAssistantParams
  | ObjectFileAssistant ObjectFileAssistantParams


data CreateAssistantParams = CreateAssistantParams
data CreateAssistantFileParams = CreateAssistantFileParams
data ListAssistantsParams = ListAssistantsParams
data ListFilesAssistantParams = ListFilesAssistantParams
data GetAssistantParams = GetAssistantParams
data GetFileAssistantParams = GetFileAssistantParams
data ModifyAssistantParams = ModifyAssistantParams
data DeleteAssistantParams = DeleteAssistantParams
data DeleteFileAssistantParams = DeleteFileAssistantParams
data ObjectAssistantParams = ObjectAssistantParams
data ObjectFileAssistantParams = ObjectFileAssistantParams
