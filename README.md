# Generated Haskell OpenAI client library

<div style="display:flex; flex-direction: row; padding: 35px; justify-content: center; align-items: center; ">
  <img src="https://w7.pngwing.com/pngs/126/435/png-transparent-openai-logo-tech-companies-thumbnail.png" style="max-width:150px; margin-right:30px">
  <span style="font-size: xxx-large;">&nbsp;&nbsp;&gt;&gt;&nbsp;&nbsp;</span>
  <img src="https://w7.pngwing.com/pngs/202/480/png-transparent-haskell-hackathon-programming-language-idris-functional-programming-others-purple-angle-text-thumbnail.png" style="width:125px">
</div>

## Concept

This is a client library for accessing OpenAI API with Haskell code. Importantly, the low-level access code is derived automatically from the official formal [definition](https://github.com/openai/openai-openapi) provided by OpenAI in OpenAPI3 format. Then a developer-friendly layer is added to the low-level part, so that it's much easier to use in normal work.


## Updating the generated component

The OpenAPI-to-Haskell code is the OpenAPI3 Code Generator from [Joel Fish & Remo Dorig](https://hackage.haskell.org/package/openapi3-code-generator).

To regenerate the low-level client code (openai-gen library), do:

stack exec -- openapi3-code-generator-exe --response-type-suffix OpResponse --output-dir /tmp/openai-gen --module-name OpenAIGen ../openai.yaml

and fix any occurrence of a stream response as the code generator doesn't support it.
At the time of this writing (Feb 2024), the only issue is with the Operations/CreateSpeech.hs file CreateSpeechOpResponse type that is ignoring the HTTP response body and needs a simple extension to transmit the body payload back to the caller.


## Using it

To use the client, follow the pattern:

-- Get the main pieces for a Chat completion action:
import OpenAI (think)
import Actions.Chat (CompleteParams(..), ChatVerb(..))

-- Define a simple context to work with, with a token and a model:
oaiContext = Simple "an-openai-api-token" "gpt-3.5-turbo"

-- Create a simple prompt for the Chat Completion:
params = SimplePrompt "Explain the advantages of the Haskell openai-client library."
action = Complete params

-- Send it to the artificial brain:
result <- think $ Chat action oaiContext

-- ... work with the result (in real life, do error checking and etc):
Right (TextResult chatCompletion) = rezA
print chatCompletion

## Status
- low-level layer is complete.
- developer-friendly layer covers a minimal set of functionality.
- needs some reorganisation to implement chaining amongst API functionality with Haskell typical concepts of streaming and monadic continuity.

## Ddevelopment Notes

This is the OpenAI client made of thin wrappers over code generated from the official OpenAI OpenAPI definition.

The design of the top-level layer is to provide a single entry point, the `think` function, to invoke all OpenAI API functions. The `think` function is given an `Action` extended by a exec context.  The `Action` is one of the functional group set by OpenAI, while the context provides a way to pass authentication and model information.  The `think` function returns a `Result` value, which contains data accordingly to the underlying operations performed by the OpenAI system.

Each `Action` is broken down into verbs that represent the functional groups respective API entry points. The verbs have specific paramaters to drive the desired effect on the OpenAI side.

So the API invocation approach is conceptually 'run FunctionalGroup( Verb( parameters )) --> Result-subtype'.

The functional groups as per OpenAI classification are:
 - audio:
  Learn how to turn audio into text or text into audio.
  Related guide: [Speech to text](/docs/guides/speech-to-text)
    - createSpeech
    - createTranscription
    - createTranslation

 - chat:
  Given a list of messages comprising a conversation, the model will return a response.
  Related guide: [Chat Completions](/docs/guides/text-generation)
    - createChatCompletion
    - CreateChatCompletionResponse
    - CreateChatCompletionStreamResponse

 - embeddings:
  Get a vector representation of a given input that can be easily consumed by machine learning models and algorithms.
  Related guide: [Embeddings](/docs/guides/embeddings)
    - createEmbedding
    - Embedding

 - fine-tuning:
  Manage fine-tuning jobs to tailor a model to your specific training data.
  Related guide: [Fine-tune models](/docs/guides/fine-tuning)
    - createFineTuningJob
    - listPaginatedFineTuningJobs
    - listFineTuningEvents
    - retrieveFineTuningJob
    - cancelFineTuningJob
    - FineTuningJob
    - FineTuningJobEvent

 - files:
  Files are used to upload documents that can be used with features like
  [Assistants](/docs/api-reference/assistants) and
  [Fine-tuning](/docs/api-reference/fine-tuning).
    - createFile
    - listFiles
    - retrieveFile
    - deleteFile
    - downloadFile
    - OpenAIFile

 - images:
  Given a prompt and/or an input image, the model will generate a new image.
  Related guide: [Image generation](/docs/guides/images)
    - createImage
    - createImageEdit
    - createImageVariation

 - models:
  List and describe the various models available in the API. You can refer to the [Models](/docs/models) documentation to understand what models are available and the differences between them.
    - listModels
    - retrieveModel
    - deleteModel
    - Model

 - moderations:
  Given a input text, outputs if the model classifies it as violating OpenAI's content policy.
  Related guide: [Moderations](/docs/guides/moderation)
    - createModeration
    - CreateModerationResponse

 - assistants:
  Build assistants that can call models and use tools to perform tasks.
  [Get started with the Assistants API](/docs/assistants)
    - createAssistant
    - createAssistantFile
    - listAssistants
    - listAssistantFiles
    - getAssistant
    - getAssistantFile
    - modifyAssistant
    - deleteAssistant
    - deleteAssistantFile
    - AssistantObject
    - AssistantFileObject

 - threads:
  Create threads that assistants can interact with.
  Related guide: [Assistants](/docs/assistants/overview)
    - createThread
    - getThread
    - modifyThread
    - deleteThread
    - ThreadObject

 - messages:
  Create messages within threads
  Related guide: [Assistants](/docs/assistants/overview)
    - createMessage
    - listMessages
    - listMessageFiles
    - getMessage
    - getMessageFile
    - modifyMessage
    - MessageObject
    - MessageFileObject

 - runs:
  Represents an execution run on a thread.
  Related guide: [Assistants](/docs/assistants/overview)
    - createRun
    - createThreadAndRun
    - listRuns
    - listRunSteps
    - getRun
    - getRunStep
    - modifyRun
    - submitToolOuputsToRun
    - cancelRun
    - RunObject
    - RunStepObject

 - completions:
  Given a prompt, the model will return one or more predicted completions
  along with the probabilities of alternative tokens at each position. Most
  developer should use our [Chat Completions API](/docs/guides/text-generation/text-generation-models) to leverage our best and newest models. Most models that support the legacy Completions endpoint [will be shut off on January 4th, 2024]
  DEPRECATION: (/docs/deprecations/2023-07-06-gpt-and-embeddings).
    - createCompletion
    - CreateCompletionResponse

