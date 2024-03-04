This is a client library for accessing OpenAI API built by putting some simplification over an automatically generated version of a client library using the OpenAPI definition provided by OpenAI.

The OpenAPI-to-Haskell code is the OpenAPI3 Code Generator from .

To get the low-level client code, do:
stack exec -- openapi3-code-generator-exe --response-type-suffix OpResponse --output-dir /tmp/openai-gen --module-name OpenAIGen ../openai.yaml

To use the client, follow the pattern:

runClient <config> <request>

where <request> is:
<a OpenAI operation> <some parameters>


