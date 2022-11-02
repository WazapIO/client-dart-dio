# openapi.api.MessageSendingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyBusinessCatalogGet**](MessageSendingApi.md#instancesinstancekeybusinesscatalogget) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
[**instancesInstanceKeySendAudioPost**](MessageSendingApi.md#instancesinstancekeysendaudiopost) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**instancesInstanceKeySendButtonMediaPost**](MessageSendingApi.md#instancesinstancekeysendbuttonmediapost) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**instancesInstanceKeySendButtonsPost**](MessageSendingApi.md#instancesinstancekeysendbuttonspost) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**instancesInstanceKeySendContactPost**](MessageSendingApi.md#instancesinstancekeysendcontactpost) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**instancesInstanceKeySendDocumentPost**](MessageSendingApi.md#instancesinstancekeysenddocumentpost) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**instancesInstanceKeySendImagePost**](MessageSendingApi.md#instancesinstancekeysendimagepost) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**instancesInstanceKeySendListPost**](MessageSendingApi.md#instancesinstancekeysendlistpost) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**instancesInstanceKeySendLocationPost**](MessageSendingApi.md#instancesinstancekeysendlocationpost) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**instancesInstanceKeySendMediaPost**](MessageSendingApi.md#instancesinstancekeysendmediapost) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**instancesInstanceKeySendPollPost**](MessageSendingApi.md#instancesinstancekeysendpollpost) | **POST** /instances/{instance_key}/send/poll | Send a Poll message with media.
[**instancesInstanceKeySendTemplateMediaPost**](MessageSendingApi.md#instancesinstancekeysendtemplatemediapost) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**instancesInstanceKeySendTemplatePost**](MessageSendingApi.md#instancesinstancekeysendtemplatepost) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**instancesInstanceKeySendTextPost**](MessageSendingApi.md#instancesinstancekeysendtextpost) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**instancesInstanceKeySendUploadPost**](MessageSendingApi.md#instancesinstancekeysenduploadpost) | **POST** /instances/{instance_key}/send/upload | Upload media.
[**instancesInstanceKeySendVideoPost**](MessageSendingApi.md#instancesinstancekeysendvideopost) | **POST** /instances/{instance_key}/send/video | Send raw video.


# **instancesInstanceKeyBusinessCatalogGet**
> MainAPIResponse instancesInstanceKeyBusinessCatalogGet(instanceKey)

Fetches the catlog.

Gets list of all products registered by you.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.instancesInstanceKeyBusinessCatalogGet(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeyBusinessCatalogGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendAudioPost**
> MainAPIResponse instancesInstanceKeySendAudioPost(instanceKey, to, instancesInstanceKeySendAudioPostRequest, caption)

Send raw audio.

Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String to = to_example; // String | The recipient's number
final InstancesInstanceKeySendAudioPostRequest instancesInstanceKeySendAudioPostRequest = ; // InstancesInstanceKeySendAudioPostRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.instancesInstanceKeySendAudioPost(instanceKey, to, instancesInstanceKeySendAudioPostRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendAudioPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **instancesInstanceKeySendAudioPostRequest** | [**InstancesInstanceKeySendAudioPostRequest**](InstancesInstanceKeySendAudioPostRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendButtonMediaPost**
> MainAPIResponse instancesInstanceKeySendButtonMediaPost(instanceKey, data)

Send a button message with a media header.

Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsButtonMessageWithMediaPayload data = ; // StructsButtonMessageWithMediaPayload | Message data

try {
    final response = api.instancesInstanceKeySendButtonMediaPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendButtonMediaPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsButtonMessageWithMediaPayload**](StructsButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendButtonsPost**
> MainAPIResponse instancesInstanceKeySendButtonsPost(instanceKey, data)

Send a button message.

Sends an interactive button message to the given user. Make sure that all the button ids are unique

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsButtonMessagePayload data = ; // StructsButtonMessagePayload | Message data

try {
    final response = api.instancesInstanceKeySendButtonsPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendButtonsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsButtonMessagePayload**](StructsButtonMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendContactPost**
> MainAPIResponse instancesInstanceKeySendContactPost(instanceKey, data)

Send a contact message.

Sends a contact (vcard) message to the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsContactMessagePayload data = ; // StructsContactMessagePayload | Message data

try {
    final response = api.instancesInstanceKeySendContactPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendContactPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsContactMessagePayload**](StructsContactMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendDocumentPost**
> MainAPIResponse instancesInstanceKeySendDocumentPost(instanceKey, to, instancesInstanceKeySendDocumentPostRequest, caption)

Send raw document.

Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String to = to_example; // String | The recipient's number
final InstancesInstanceKeySendDocumentPostRequest instancesInstanceKeySendDocumentPostRequest = ; // InstancesInstanceKeySendDocumentPostRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.instancesInstanceKeySendDocumentPost(instanceKey, to, instancesInstanceKeySendDocumentPostRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendDocumentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **instancesInstanceKeySendDocumentPostRequest** | [**InstancesInstanceKeySendDocumentPostRequest**](InstancesInstanceKeySendDocumentPostRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendImagePost**
> MainAPIResponse instancesInstanceKeySendImagePost(instanceKey, to, instancesInstanceKeySendImagePostRequest, caption)

Send raw image.

Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String to = to_example; // String | The recipient's number
final InstancesInstanceKeySendImagePostRequest instancesInstanceKeySendImagePostRequest = ; // InstancesInstanceKeySendImagePostRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.instancesInstanceKeySendImagePost(instanceKey, to, instancesInstanceKeySendImagePostRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **instancesInstanceKeySendImagePostRequest** | [**InstancesInstanceKeySendImagePostRequest**](InstancesInstanceKeySendImagePostRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendListPost**
> MainAPIResponse instancesInstanceKeySendListPost(instanceKey, data)

Send a List message.

Sends an interactive List message to the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsListMessagePayload data = ; // StructsListMessagePayload | Message data

try {
    final response = api.instancesInstanceKeySendListPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendListPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsListMessagePayload**](StructsListMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendLocationPost**
> MainAPIResponse instancesInstanceKeySendLocationPost(instanceKey, data)

Send a location message.

Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsLocationMessagePayload data = ; // StructsLocationMessagePayload | Message data

try {
    final response = api.instancesInstanceKeySendLocationPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendLocationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsLocationMessagePayload**](StructsLocationMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendMediaPost**
> MainAPIResponse instancesInstanceKeySendMediaPost(instanceKey, data)

Send a media message.

Sends a media message to the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsSendMediaPayload data = ; // StructsSendMediaPayload | Message data

try {
    final response = api.instancesInstanceKeySendMediaPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendMediaPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsSendMediaPayload**](StructsSendMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendPollPost**
> MainAPIResponse instancesInstanceKeySendPollPost(instanceKey, data)

Send a Poll message with media.

Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsPollMessagePayload data = ; // StructsPollMessagePayload | Message data

try {
    final response = api.instancesInstanceKeySendPollPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendPollPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsPollMessagePayload**](StructsPollMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTemplateMediaPost**
> MainAPIResponse instancesInstanceKeySendTemplateMediaPost(instanceKey, data)

Send a template message with media.

Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsTemplateButtonWithMediaPayload data = ; // StructsTemplateButtonWithMediaPayload | Message data

try {
    final response = api.instancesInstanceKeySendTemplateMediaPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendTemplateMediaPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsTemplateButtonWithMediaPayload**](StructsTemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTemplatePost**
> MainAPIResponse instancesInstanceKeySendTemplatePost(instanceKey, data)

Send a template message.

Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsTemplateButtonPayload data = ; // StructsTemplateButtonPayload | Message data

try {
    final response = api.instancesInstanceKeySendTemplatePost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendTemplatePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsTemplateButtonPayload**](StructsTemplateButtonPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTextPost**
> MainAPIResponse instancesInstanceKeySendTextPost(instanceKey, data)

Send a text message.

Sends a text message to the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final StructsTextMessage data = ; // StructsTextMessage | Message data

try {
    final response = api.instancesInstanceKeySendTextPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendTextPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsTextMessage**](StructsTextMessage.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendUploadPost**
> MainAPIResponse instancesInstanceKeySendUploadPost(instanceKey, type, instancesInstanceKeySendUploadPostRequest)

Upload media.

Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String type = type_example; // String | Media type
final InstancesInstanceKeySendUploadPostRequest instancesInstanceKeySendUploadPostRequest = ; // InstancesInstanceKeySendUploadPostRequest | 

try {
    final response = api.instancesInstanceKeySendUploadPost(instanceKey, type, instancesInstanceKeySendUploadPostRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **type** | **String**| Media type | 
 **instancesInstanceKeySendUploadPostRequest** | [**InstancesInstanceKeySendUploadPostRequest**](InstancesInstanceKeySendUploadPostRequest.md)|  | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendVideoPost**
> MainAPIResponse instancesInstanceKeySendVideoPost(instanceKey, to, instancesInstanceKeySendVideoPostRequest, caption)

Send raw video.

Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String to = to_example; // String | The recipient's number
final InstancesInstanceKeySendVideoPostRequest instancesInstanceKeySendVideoPostRequest = ; // InstancesInstanceKeySendVideoPostRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.instancesInstanceKeySendVideoPost(instanceKey, to, instancesInstanceKeySendVideoPostRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->instancesInstanceKeySendVideoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **instancesInstanceKeySendVideoPostRequest** | [**InstancesInstanceKeySendVideoPostRequest**](InstancesInstanceKeySendVideoPostRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

