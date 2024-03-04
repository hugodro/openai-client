{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.FineTune (
  FineTuneVerb(..)
) where


data FineTuneVerb =
  DoFineTune DoFineTuneParams
  | ListPaginatedFineTuning ListPaginatedFineTuningParams
  | ListFineTuning ListFineTuningParams
  | RetrieveFineTune RetrieveFineTuneParams
  | CancelFineTuning CancelFineTuningParams
  | FineTuningJob FineTuningJobParams
  | FineTuningEvent FineTuningEventParams


data DoFineTuneParams = DoFineTuneParams
data ListPaginatedFineTuningParams = ListPaginatedFineTuningParams
data ListFineTuningParams = ListFineTuningParams
data RetrieveFineTuneParams = RetrieveFineTuneParams
data CancelFineTuningParams = CancelFineTuningParams
data FineTuningJobParams = FineTuningJobParams
data FineTuningEventParams = FineTuningEventParams

