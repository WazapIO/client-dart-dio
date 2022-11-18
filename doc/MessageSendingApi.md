# openapi.api.MessageSendingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendAudio**](MessageSendingApi.md#sendaudio) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**sendButtonMessage**](MessageSendingApi.md#sendbuttonmessage) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**sendButtonWithMedia**](MessageSendingApi.md#sendbuttonwithmedia) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**sendContact**](MessageSendingApi.md#sendcontact) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**sendDocument**](MessageSendingApi.md#senddocument) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**sendGroupInvite**](MessageSendingApi.md#sendgroupinvite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message
[**sendImage**](MessageSendingApi.md#sendimage) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**sendListMessage**](MessageSendingApi.md#sendlistmessage) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**sendLocation**](MessageSendingApi.md#sendlocation) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**sendMediaMessage**](MessageSendingApi.md#sendmediamessage) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**sendPollMessage**](MessageSendingApi.md#sendpollmessage) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
[**sendTemplate**](MessageSendingApi.md#sendtemplate) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**sendTemplateWithMedia**](MessageSendingApi.md#sendtemplatewithmedia) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**sendTextMessage**](MessageSendingApi.md#sendtextmessage) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**sendVideo**](MessageSendingApi.md#sendvideo) | **POST** /instances/{instance_key}/send/video | Send raw video.
[**uploadMedia**](MessageSendingApi.md#uploadmedia) | **POST** /instances/{instance_key}/send/upload | Upload media.


# **sendAudio**
> APIResponse sendAudio(instanceKey, to, sendAudioRequest, caption)

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
final SendAudioRequest sendAudioRequest = ; // SendAudioRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.sendAudio(instanceKey, to, sendAudioRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendAudio: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **sendAudioRequest** | [**SendAudioRequest**](SendAudioRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendButtonMessage**
> APIResponse sendButtonMessage(instanceKey, data)

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
final ButtonMessagePayload data = ; // ButtonMessagePayload | Message data

try {
    final response = api.sendButtonMessage(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendButtonMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**ButtonMessagePayload**](ButtonMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendButtonWithMedia**
> APIResponse sendButtonWithMedia(instanceKey, data)

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
final ButtonMessageWithMediaPayload data = ; // ButtonMessageWithMediaPayload | Message data

try {
    final response = api.sendButtonWithMedia(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendButtonWithMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**ButtonMessageWithMediaPayload**](ButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendContact**
> APIResponse sendContact(instanceKey, data)

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
final ContactMessagePayload data = ; // ContactMessagePayload | Message data

try {
    final response = api.sendContact(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**ContactMessagePayload**](ContactMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDocument**
> APIResponse sendDocument(instanceKey, to, sendDocumentRequest, caption)

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
final SendDocumentRequest sendDocumentRequest = ; // SendDocumentRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.sendDocument(instanceKey, to, sendDocumentRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **sendDocumentRequest** | [**SendDocumentRequest**](SendDocumentRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendGroupInvite**
> APIResponse sendGroupInvite(instanceKey, data)

Send a group invite message

Sends a group invite message to the specified number. Don't include \"https://chat.whatsapp.com/\" in the invite code.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final GroupInviteMessagePayload data = ; // GroupInviteMessagePayload | Message data

try {
    final response = api.sendGroupInvite(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendGroupInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**GroupInviteMessagePayload**](GroupInviteMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendImage**
> APIResponse sendImage(instanceKey, to, updateProfilePicRequest, caption)

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
final UpdateProfilePicRequest updateProfilePicRequest = ; // UpdateProfilePicRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.sendImage(instanceKey, to, updateProfilePicRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **updateProfilePicRequest** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendListMessage**
> APIResponse sendListMessage(instanceKey, data)

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
final ListMessagePayload data = ; // ListMessagePayload | Message data

try {
    final response = api.sendListMessage(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendListMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**ListMessagePayload**](ListMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendLocation**
> APIResponse sendLocation(instanceKey, data)

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
final LocationMessagePayload data = ; // LocationMessagePayload | Message data

try {
    final response = api.sendLocation(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**LocationMessagePayload**](LocationMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMediaMessage**
> APIResponse sendMediaMessage(instanceKey, data)

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
final SendMediaPayload data = ; // SendMediaPayload | Message data

try {
    final response = api.sendMediaMessage(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendMediaMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**SendMediaPayload**](SendMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPollMessage**
> APIResponse sendPollMessage(instanceKey, data)

Send a Poll message.

Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMessageSendingApi();
final String instanceKey = instanceKey_example; // String | Instance key
final PollMessagePayload data = ; // PollMessagePayload | Message data

try {
    final response = api.sendPollMessage(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendPollMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**PollMessagePayload**](PollMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplate**
> APIResponse sendTemplate(instanceKey, data)

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
final TemplateButtonPayload data = ; // TemplateButtonPayload | Message data

try {
    final response = api.sendTemplate(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**TemplateButtonPayload**](TemplateButtonPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplateWithMedia**
> APIResponse sendTemplateWithMedia(instanceKey, data)

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
final TemplateButtonWithMediaPayload data = ; // TemplateButtonWithMediaPayload | Message data

try {
    final response = api.sendTemplateWithMedia(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendTemplateWithMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**TemplateButtonWithMediaPayload**](TemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTextMessage**
> APIResponse sendTextMessage(instanceKey, data)

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
final TextMessage data = ; // TextMessage | Message data

try {
    final response = api.sendTextMessage(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendTextMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**TextMessage**](TextMessage.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendVideo**
> APIResponse sendVideo(instanceKey, to, sendVideoRequest, caption)

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
final SendVideoRequest sendVideoRequest = ; // SendVideoRequest | 
final String caption = caption_example; // String | Attached caption

try {
    final response = api.sendVideo(instanceKey, to, sendVideoRequest, caption);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->sendVideo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **to** | **String**| The recipient's number | 
 **sendVideoRequest** | [**SendVideoRequest**](SendVideoRequest.md)|  | 
 **caption** | **String**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMedia**
> APIResponse uploadMedia(instanceKey, type, uploadMediaRequest)

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
final UploadMediaRequest uploadMediaRequest = ; // UploadMediaRequest | 

try {
    final response = api.uploadMedia(instanceKey, type, uploadMediaRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageSendingApi->uploadMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **type** | **String**| Media type | 
 **uploadMediaRequest** | [**UploadMediaRequest**](UploadMediaRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

