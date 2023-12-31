# Service Fabric Client APIs

> see https://aka.ms/autorest

This is the AutoRest configuration file for ServiceFabricClient.


---
## Getting Started
To build the SDK for ServiceFabricClient, simply [Install AutoRest](https://aka.ms/autorest/install) and in this folder, run:

> `autorest`

To see additional help and options, run:

> `autorest --help`
---

## Configuration



### Basic Information
These are the global settings for the ServiceFabricClient API.

``` yaml
openapi-type: data-plane
tag: '8.1'
```

### Suppression

``` yaml
directive:
  - suppress: OperationIdNounVerb
    reason: The operation names follow the Service Fabric Client API operation names from the existing .NET SDK.
  - suppress: ListInOperationName
    reason: The operation names follow the Service Fabric Client API operation names from the existing .NET SDK.
  - suppress: GetInOperationName
    reason: The operation names follow the Service Fabric Client API operation names from the existing .NET SDK.
  - suppress: PutInOperationName
    reason: The operation names follow the Service Fabric Client API operation names from the existing .NET SDK.
  - suppress: HttpsSupportedScheme
    reason: Service Fabric clusters are owned by the users and they can be configured to have a secure or un-secure client connection endpoint.
  - suppress: LongRunningOperationsWithLongRunningExtension
    reason: Service Fabric platform has already established pattern for paged responses based on ContinuationToken parameter.
  - suppress: SecurityDefinitionsStructure
    reason: Service Fabric clusters support various security mechanism for the REST endpoint, this includes certificate, Kerberos, AD, AAD and others. The documentation for the REST API includes information on how to authenticate to the cluster endpoint secured with different mechanisms.
  - suppress: LROStatusCodesReturnTypeSchema
    reason: Service Fabric platform uses query based mechanism for some of the long running operations.
  - suppress: PostOperationIdContainsUrlVerb
    reason: The URL scheme for Service Fabric does not follow Azure Service rules. Service Fabric supports various functions on different entities that are modeled using POST.
  - suppress: APIVersionPattern
    reason: The URL scheme for Service Fabric does not follow Azure Service rules. Service Fabric supports various functions on different entities that are modeled using POST.
  - suppress: DefinitionsPropertiesNamesCamelCase
    reason: The property names for Service Fabric follow the naming scheme of existing property names in our client SDK and concepts.
  - suppress: GuidUsage
    reason: The IDs of the service partition in Service Fabric are GUIDs.
  - suppress: EnumInsteadOfBoolean
    reason:  The boolean properties are actually boolean value in the Service Fabric's application model.
  - suppress: OperationsAPIImplementation
    reason: Service Fabric client API is not an ARM based API and hence this rule is not applicable.
  - suppress: XmsExamplesRequired
    reason: There are a lot of APIs that does not have the example. While it is being worked upon disabling this to ensure that we catch and fix other violations

```

### Tag: 6.2

These settings apply only when `--tag=6.2` is specified on the command line.

``` yaml $(tag) == '6.2'
input-file:
- Microsoft.ServiceFabric/stable/6.2/servicefabric.json

```

### Tag: 6.3

These settings apply only when `--tag=6.3` is specified on the command line.

``` yaml $(tag) == '6.3'
input-file:
- Microsoft.ServiceFabric/stable/6.3/servicefabric.json

```

### Tag: 6.4

These settings apply only when `--tag=6.4` is specified on the command line.

``` yaml $(tag) == '6.4'
input-file:
- Microsoft.ServiceFabric/stable/6.4/servicefabric.json

```

### Tag: 6.5

These settings apply only when `--tag=6.5` is specified on the command line.

``` yaml $(tag) == '6.5'
input-file:
- Microsoft.ServiceFabric/stable/6.5/servicefabric.json

```

### Tag: 7.0

These settings apply only when `--tag=7.0` is specified on the command line.

``` yaml $(tag) == '7.0'
input-file:
- Microsoft.ServiceFabric/stable/7.0/servicefabric.json

```

### Tag: 7.1

These settings apply only when `--tag=7.1` is specified on the command line.

``` yaml $(tag) == '7.1'
input-file:
- Microsoft.ServiceFabric/stable/7.1/servicefabric.json

```

### Tag: 7.2

These settings apply only when `--tag=7.2` is specified on the command line.

``` yaml $(tag) == '7.2'
input-file:
- Microsoft.ServiceFabric/stable/7.2/servicefabric.json

```

### Tag: 8.0

These settings apply only when `--tag=8.0` is specified on the command line.

``` yaml $(tag) == '8.0'
input-file:
- Microsoft.ServiceFabric/stable/8.0/servicefabric.json
```

### Tag: 8.1
These settings apply only when `--tag=8.1` is specified on the command line.

``` yaml $(tag) == '8.1'
input-file:
- Microsoft.ServiceFabric/stable/8.1/servicefabric.json
```

### Tag: 8.2
These settings apply only when `--tag=8.2` is specified on the command line.

``` yaml $(tag) == '8.2'
input-file:
- Microsoft.ServiceFabric/stable/8.2/servicefabric.json
```
---

# Code Generation

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java)
java:
  azure-arm: true
  fluent: true
  namespace: com.microsoft.azure.servicefabric
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(azure-libraries-for-java-folder)/azure-servicefabric
```

## Multi-API/Profile support for AutoRest v3 generators 

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /* autogenerated */
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/Microsoft.ServiceFabric/stable/6.2/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/6.3/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/6.4/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/6.5/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/7.0/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/7.1/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/7.2/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/8.0/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/8.1/servicefabric.json
  - $(this-folder)/Microsoft.ServiceFabric/stable/8.2/servicefabric.json
```

If there are files that should not be in the `all-api-versions` set, 
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file: 
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```

