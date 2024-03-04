This is the OpenAI client made of thin wrappers over code generated from the official OpenAI OpenAPI definition.

Groups:
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

