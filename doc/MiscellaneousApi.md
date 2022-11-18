# openapi.api.MiscellaneousApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadMedia**](MiscellaneousApi.md#downloadmedia) | **POST** /instances/{instance_key}/misc/download | Download media
[**getProfilePic**](MiscellaneousApi.md#getprofilepic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**getUsersInfo**](MiscellaneousApi.md#getusersinfo) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.
[**setChatPresence**](MiscellaneousApi.md#setchatpresence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence
[**updateProfilePic**](MiscellaneousApi.md#updateprofilepic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture


# **downloadMedia**
> APIResponse downloadMedia(instanceKey, fileType, data, responseType)

Download media

Downloads the media from the given media keys.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMiscellaneousApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String fileType = fileType_example; // String | File type
final FileUpload data = ; // FileUpload | Media data
final String responseType = responseType_example; // String | Response type (file, base64)

try {
    final response = api.downloadMedia(instanceKey, fileType, data, responseType);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->downloadMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **fileType** | **String**| File type | 
 **data** | [**FileUpload**](FileUpload.md)| Media data | 
 **responseType** | **String**| Response type (file, base64) | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfilePic**
> APIResponse getProfilePic(instanceKey, jid)

Get profile pic.

Returns the profile pic of the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMiscellaneousApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String jid = jid_example; // String | JID

try {
    final response = api.getProfilePic(instanceKey, jid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->getProfilePic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **jid** | **String**| JID | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersInfo**
> APIResponse getUsersInfo(instanceKey, data)

Fetches the users info.

Gets the user info for the given user ids. This does not checks if user is registered or not

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMiscellaneousApi();
final String instanceKey = instanceKey_example; // String | Instance key
final UserInfoPayload data = ; // UserInfoPayload | Data

try {
    final response = api.getUsersInfo(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->getUsersInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**UserInfoPayload**](UserInfoPayload.md)| Data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setChatPresence**
> APIResponse setChatPresence(instanceKey, jid, presence)

Set chat presence

Sets the presence of the given chat. (Typing, Recording, Paused) Options: typing, recording, paused

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMiscellaneousApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String jid = jid_example; // String | JID
final String presence = presence_example; // String | Presence

try {
    final response = api.setChatPresence(instanceKey, jid, presence);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->setChatPresence: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **jid** | **String**| JID | 
 **presence** | **String**| Presence | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePic**
> APIResponse updateProfilePic(instanceKey, updateProfilePicRequest)

Update profile picture

Changes the profile pic of the current logged in user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getMiscellaneousApi();
final String instanceKey = instanceKey_example; // String | Instance key
final UpdateProfilePicRequest updateProfilePicRequest = ; // UpdateProfilePicRequest | 

try {
    final response = api.updateProfilePic(instanceKey, updateProfilePicRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->updateProfilePic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **updateProfilePicRequest** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

