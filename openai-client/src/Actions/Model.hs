{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Model (
  ModelVerb(..)
) where

data ModelVerb =
  ListModels
  | RetrieveModel RetrieveModelParams
  | DeleteModel DeleteModelParams
  | GetModel GetModelParams

data RetrieveModelParams = RetrieveModelParams
data DeleteModelParams = DeleteModelParams
data GetModelParams = GetModelParams
