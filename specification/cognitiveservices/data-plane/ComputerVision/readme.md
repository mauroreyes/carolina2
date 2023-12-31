# Cognitive Services Computer Vision SDK

> see https://aka.ms/autorest

Configuration for generating Computer Vision SDK.

The current release is `release_3_2`.

``` yaml

tag: release_3_2
add-credentials: true
openapi-type: data-plane
```
# Releases

### Release 2.0
These settings apply only when `--tag=release_2_0` is specified on the command line.

``` yaml $(tag) == 'release_2_0'
input-file:
  - stable/v2.0/ComputerVision.json
  - stable/v2.0/Ocr.json
```

### Release 2.1
These settings apply only when `--tag=release_2_1` is specified on the command line.

``` yaml $(tag) == 'release_2_1'
input-file:
  - stable/v2.1/ComputerVision.json
  - stable/v2.1/Ocr.json
```

### Release 3.0-preview
These settings apply only when `--tag=release_3_0_preview` is specified on the command line.

``` yaml $(tag) == 'release_3_0_preview'
input-file:
  - preview/v3.0-preview/Ocr.json
```

### Release 3.0
These settings apply only when `--tag=release_3_0` is specified on the command line.

``` yaml $(tag) == 'release_3_0'
input-file:
  - stable/v3.0/ComputerVision.json
  - stable/v3.0/Ocr.json
```

### Release 3.1-preview.2
These settings apply only when `--tag=release_3_1_preview_2` is specified on the command line.

``` yaml $(tag) == 'release_3_1_preview_2'
input-file:
  - preview/v3.1-preview.2/Ocr.json
```

### Release 3.1
These settings apply only when `--tag=release_3_1` is specified on the command line.

``` yaml $(tag) == 'release_3_1'
input-file:
  - stable/v3.1/ComputerVision.json
  - stable/v3.1/Ocr.json
```

### Release 3.2-preview.2
These settings apply only when `--tag=release_3_2_preview_2` is specified on the command line.

``` yaml $(tag) == 'release_3_2_preview_2'
input-file:
  - preview/v3.2-preview.2/Ocr.json
```

### Release 3.2
These settings apply only when `--tag=release_3_2` is specified on the command line.

``` yaml $(tag) == 'release_3_2'
input-file:
  - stable/v3.2/ComputerVision.json
  - stable/v3.2/Ocr.json
```

## CSharp Settings
These settings apply only when `--csharp` is specified on the command line.
``` yaml $(csharp)
csharp:
  sync-methods: None
  license-header: MICROSOFT_MIT_NO_VERSION
  azure-arm: false
  namespace: Microsoft.Azure.CognitiveServices.Vision.ComputerVision
  output-folder: $(csharp-sdks-folder)/CognitiveServices/Vision.ComputerVision/src/Generated
  clear-output-folder: true

directive:
  from: source-file-csharp
  where: $
  transform: >
    $ = $.replace( /TextRecognitionMode mode, string url,/g, "string url, TextRecognitionMode mode," );
    $ = $.replace( /mode, url,/g, "url, mode," );
```

## Python

These settings apply only when `--python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.
Use `--python-mode=update` if you already have a setup.py and just want to update the code itself.
May need to supply `--version=V2` on the command line.

``` yaml $(python)
python-mode: create
license-header: MICROSOFT_MIT_NO_VERSION
add-credentials: true
payload-flattening-threshold: 2
namespace: azure.cognitiveservices.vision.computervision
package-name: azure-cognitiveservices-vision-computervision
package-version: 0.9.0
clear-output-folder: true
use: "@microsoft.azure/autorest.python@~4.0.71" 
version: V2
multiapi: true
no-async: true
client-side-validation: false

directive:
  from: source-file-python
  where: $
  transform: >
    $ = $.replace( /self, mode, url,/g, "self, url, mode," );
```
``` yaml $(python) && $(python-mode) == 'update'
no-namespace-folders: true
output-folder: $(python-sdks-folder)/cognitiveservices/azure-cognitiveservices-vision-computervision/azure/cognitiveservices/vision/computervision
```
``` yaml $(python) && $(python-mode) == 'create'
basic-setup-py: true
output-folder: $(python-sdks-folder)/cognitiveservices/azure-cognitiveservices-vision-computervision
```

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java)
java:
  azure-arm: true
  namespace: com.microsoft.azure.cognitiveservices.vision.computervision
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/cognitiveservices/data-plane/vision/computervision
  with-optional-parameters: true
  with-single-async-method: true
  with-default-group-name: ComputerVision

directive:
  from: source-file-java
  where: $
  transform: >
    $ = $.replace( /TextRecognitionMode mode, String url/g, "String url, TextRecognitionMode mode" );
    $ = $.replace( /recognizeTextWithServiceResponseAsync\(mode, url\)/g, "recognizeTextWithServiceResponseAsync(url, mode)" )
```

## Multi-API/Profile support for AutoRest v3 generators 

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /* autogenerated */
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/stable/v2.0/ComputerVision.json
  - $(this-folder)/stable/v2.0/Ocr.json
  - $(this-folder)/stable/v2.1/ComputerVision.json
  - $(this-folder)/stable/v2.1/Ocr.json
  - $(this-folder)/preview/v3.0-preview/Ocr.json
  - $(this-folder)/stable/v3.0/ComputerVision.json
  - $(this-folder)/stable/v3.0/Ocr.json
  - $(this-folder)/preview/v3.1-preview.2/Ocr.json
  - $(this-folder)/preview/v3.2-preview.2/Ocr.json
  - $(this-folder)/stable/v3.2/ComputerVision.json
  - $(this-folder)/stable/v3.2/Ocr.json

```

If there are files that should not be in the `all-api-versions` set, 
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file: 
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```

