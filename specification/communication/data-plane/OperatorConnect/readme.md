# communicationservices

> see https://aka.ms/autorest

This is the AutoRest configuration file for communicationservices.

## Getting Started

To build the SDKs for My API, simply install AutoRest via `npm` (`npm install -g autorest`) and then run:

> `autorest readme.md`

To see additional help and options, run:

> `autorest --help`

For other options on installation see [Installing AutoRest](https://aka.ms/autorest/install) on the AutoRest github page.

---

## Configuration

### Basic Information

These are the global settings for the communicationservices.

```yaml
openapi-type: data-plane
tag: package-2022-06-01-preview
```

### Tag: package-operatorconnect-2022-04-03-preview

These settings apply only when `--tag=package-operatorconnect-2022-06-01-preview` is specified on the command line.

```yaml $(tag) == 'package-operatorconnect-2022-04-03-preview'
input-file:
  - preview/2022-06-01-preview/operatorconnect.json
title:
  Azure Communication Services
```

## Supression
``` yaml
directive:
  - from:
    - operatorconnect.json
```

---

# Code Generation

## Swagger to SDK

This section describes what SDK should be generated by the automatic system.
This is not used by Autorest itself.

## TypeScript

See configuration in [readme.typescript.md](./readme.typescript.md)