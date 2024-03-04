{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Files (
  FilesVerb(..)
) where

data FilesVerb =
  CreateFile CreateFileParams
  | ListFiles ListFilesParams
  | RetrieveFile RetrieveFileParams
  | DeleteFile DeleteFileParams
  | DownloadFile DownloadFileParams
  | OpenFile OpenFileParams


data CreateFileParams = CreateFileParams
data ListFilesParams = ListFilesParams
data RetrieveFileParams = RetrieveFileParams
data DeleteFileParams = DeleteFileParams
data DownloadFileParams = DownloadFileParams
data OpenFileParams = OpenFileParams

