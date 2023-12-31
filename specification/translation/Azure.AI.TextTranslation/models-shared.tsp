import "@typespec/rest";
import "@azure-tools/typespec-azure-core";

using TypeSpec.Http;
using TypeSpec.Rest;
using Azure.Core;

namespace TextTranslation;

alias CommonParameters = {
  @header("X-ClientTraceId")
  @doc("""
    A client-generated GUID to uniquely identify the request.
    """)
  clientTraceId?: string;
};

@doc("Element containing the text for translation.")
model InputTextItem {
  @doc("Text to translate.")
  text: string;
}

alias CommonResultHeaders = {
  @header("X-RequestId")
  @doc("""
    Value generated by the service to identify the request. It is used for troubleshooting purposes.
    """)
  requestId: string;
};

@doc("Representation of the Error Response from Translator Service.")
@error
model ErrorResponse {
  ...CommonResultHeaders;

  @doc("Error details.")
  error: ErrorDetails;
}

@doc("Error details as returned by Translator Service.")
model ErrorDetails {
  @doc("Number identifier of the error.")
  code: int32;

  @doc("Human readable error description.")
  message: string;
}
