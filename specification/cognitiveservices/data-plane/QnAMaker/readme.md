# Cognitive Services QnAMaker SDK

> see https://aka.ms/autorest

Configuration for generating QnAMaker SDK.

The current release is `release_4_0`.
A preview release `release_5_0_preview.1` is also available.


``` yaml
tag: release_4_0
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: runtime_release_4_0
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: release_5_0_preview.1
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: runtime_release_preview.1
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: release_5_0_preview.2
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: runtime_release_preview.2
add-credentials: true
openapi-type: data-plane
```

# Releases

### Release 4.0
These settings apply only when `--tag=release_4_0` is specified on the command line.

``` yaml $(tag) == 'release_4_0'
input-file: stable/v4.0/QnAMaker.json
```

### Runtime Release 4.0
These settings apply only when `--tag=runtime_release_4_0` is specified on the command line.

``` yaml $(tag) == 'runtime_release_4_0'
input-file: stable/v4.0/QnAMakerRuntime.json
```

### Release 5.0-preview.1
These settings apply only when `--tag=release_5_0_preview.1` is specified on the command line.

``` yaml $(tag) == 'release_5_0_preview.1'
input-file: preview/v5.0-preview.1/QnAMaker.json
```

### Release 5.0-preview.2
These settings apply only when `--tag=release_5_0_preview.2` is specified on the command line.

``` yaml $(tag) == 'release_5_0_preview.2'
input-file: preview/v5.0-preview.2/QnAMaker.json
```

``` yaml $(multiapi)
batch:
  - tag: release_4_0
  - tag: runtime_release_4_0
  - tag: release_5_0_preview.1
  - tag: release_5_0_preview.2
```

## CSharp Settings Release 4.0
These settings apply only when `--csharp --tag=release_4_0` is specified on the command line.

``` yaml $(csharp) && $(tag) == 'release_4_0'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.Knowledge.QnAMaker
  output-folder: $(csharp-sdks-folder)/CognitiveServices/Knowledge.QnAMaker/src/Generated
  clear-output-folder: true
```

``` yaml $(csharp) && $(tag) == 'runtime_release_4_0'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.Knowledge.QnAMaker
  output-folder: $(csharp-sdks-folder)/CognitiveServices/Knowledge.QnAMaker/src/Generated
  clear-output-folder: true
```
## CSharp Settings Release 5.0-preview.1

These settings apply only when `--csharp --tag=release_5_0_preview.1` is specified on the command line.

``` yaml $(csharp) && $(tag) == 'release_5_0_preview.1'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.Knowledge.QnAMaker
  output-folder: $(csharp-sdks-folder)/CognitiveServices/Knowledge.QnAMaker/preview/src/Generated
  clear-output-folder: true
```

## CSharp Settings Release 5.0-preview.2

These settings apply only when `--csharp --tag=release_5_0_preview.2` is specified on the command line.

``` yaml $(csharp) && $(tag) == 'release_5_0_preview.2'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.Knowledge.QnAMaker
  output-folder: $(csharp-sdks-folder)/CognitiveServices/Knowledge.QnAMaker/preview/src/Generated
  clear-output-folder: true
```

## Python

See configuration in [readme.python.md](./readme.python.md)

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

These settings apply only when `--java --tag=release_4_0` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java) && $(tag) == 'release_4_0'
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.knowledge.qnamaker
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/knowledge/qnamaker
  with-optional-parameters: true
  with-single-async-method: true
```


These settings apply only when `--java --tag=release_5_0_preview` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java) && $(tag) == 'release_5_0_preview.1'
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.knowledge.qnamaker
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/knowledge/qnamaker/preview
  with-optional-parameters: true
  with-single-async-method: true
```


These settings apply only when `--java --tag=release_5_0_preview` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java) && $(tag) == 'release_5_0_preview.2'
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.knowledge.qnamaker
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/knowledge/qnamaker/preview
  with-optional-parameters: true
  with-single-async-method: true
```

## Multi-API/Profile support for AutoRest v3 generators 

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /* autogenerated */
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/stable/v4.0/QnAMaker.json
  - $(this-folder)/stable/v4.0/QnAMakerRuntime.json
  - $(this-folder)/preview/v5.0-preview.1/QnAMaker.json
  - $(this-folder)/preview/v5.0-preview.2/QnAMaker.json
```

If there are files that should not be in the `all-api-versions` set, 
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file: 
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```

