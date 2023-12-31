# Cognitive Services Speaker Recognition SDKs

> see https://aka.ms/autorest

Configuration for generating Speaker Verification SDK.

The current release is `release_2021-09-05`.

``` yaml
tag: release_2021-09-05
add-credentials: true
openapi-type: data-plane
```

``` yaml
tag: verification_2_0_preview
add-credentials: true
openapi-type: data-plane
```

# Releases

## Verification 2021-09-05
These settings apply only when `--tag=release_2021-09-05` is specified on the command line.

``` yaml $(tag) == 'release_2021-09-05'
input-file: stable/2021-09-05/Verification.json
```

## Verification 2.0 Preview
These settings apply only when `--tag=verification_2_0_preview` is specified on the command line.

``` yaml $(tag) == 'verification_2_0_preview'
input-file: preview/v2.0/Verification.json
```

``` yaml $(multiapi)
batch:
  - tag: release_2021-09-05
  - tag: verification_2_0_preview
```

---

# Code Generation

### CSharp Settings
These settings apply only when `--csharp` is specified on the command line.
``` yaml $(csharp) && $(tag) == 'release_2021-09-05'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.speech.speaker.verification
  output-folder: $(csharp-sdks-folder)/CognitiveServices/speech.speaker.verification/src/Generated
  clear-output-folder: true
```

``` yaml $(csharp) && $(tag) == 'verification_2_0_preview'
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.speech.speaker.verification
  output-folder: $(csharp-sdks-folder)/CognitiveServices/speech.speaker.verification/src/Generated
  clear-output-folder: true
```

## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java) && $(tag) == 'release_2021-09-05'
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.speech.speaker.verification
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/speech/speaker/verification
  with-optional-parameters: true
  with-single-async-method: true
```

``` yaml $(java) && $(tag) == 'verification_2_0_preview'
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.speech.speaker.verification
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/speech/speaker/verification
  with-optional-parameters: true
  with-single-async-method: true
```

## Python

See configuration in [readme.python.md](./readme.python.md)

## Go

See configuration in [readme.go.md](./readme.go.md)

## Multi-API/Profile support for AutoRest v3 generators

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /* autogenerated */
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/stable/2021-09-05/Verification.json
  - $(this-folder)/preview/v2.0/Verification.json

```

If there are files that should not be in the `all-api-versions` set,
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file:
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```

