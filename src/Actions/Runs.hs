{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-unused-matches #-}

module Actions.Runs (
  RunVerb(..)
)

where

data RunVerb =
  CreateRun CreateRunParams
  | CreateThreadRun CreateThreadRunParams
  | ListRuns ListRunsParams
  | ListRunSteps ListRunStepsParams
  | GetRun GetRunParams
  | GetRunSteps GetRuStepsnParams
  | ModifyRun ModifyRunParams
  | SubmitToRun SubmitToRunParams
  | CancelRun CancelRunParams
  | ObjectRun ObjectRunParams
  | ObjectStepRun ObjectStepRunParams


data CreateRunParams = CreateRunParams
data CreateThreadRunParams = CreateThreadRunParams
data ListRunsParams = ListRunsParams
data ListRunStepsParams = ListRunStepsParams
data GetRunParams = GetRunParams
data GetRuStepsnParams = GetRuStepsnParams
data ModifyRunParams = ModifyRunParams
data SubmitToRunParams = SubmitToRunParams
data CancelRunParams = CancelRunParams
data ObjectRunParams = ObjectRunParams
data ObjectStepRunParams = ObjectStepRunParams
