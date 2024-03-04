# Generated Haskell OpenAI client library

<img src="https://w7.pngwing.com/pngs/126/435/png-transparent-openai-logo-tech-companies-thumbnail.png" style="width:150px">
<img src="https://w7.pngwing.com/pngs/202/480/png-transparent-haskell-hackathon-programming-language-idris-functional-programming-others-purple-angle-text-thumbnail.png" style="width:150px">

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
