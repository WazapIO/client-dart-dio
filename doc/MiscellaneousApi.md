# openapi.api.MiscellaneousApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyMiscProfilePicGet**](MiscellaneousApi.md#instancesinstancekeymiscprofilepicget) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**instancesInstanceKeyMiscUserInfoPost**](MiscellaneousApi.md#instancesinstancekeymiscuserinfopost) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.


# **instancesInstanceKeyMiscProfilePicGet**
> MainAPIResponse instancesInstanceKeyMiscProfilePicGet(instanceKey, jid)

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
    final response = api.instancesInstanceKeyMiscProfilePicGet(instanceKey, jid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->instancesInstanceKeyMiscProfilePicGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **jid** | **String**| JID | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyMiscUserInfoPost**
> MainAPIResponse instancesInstanceKeyMiscUserInfoPost(instanceKey, data)

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
final StructsUserInfoPayload data = ; // StructsUserInfoPayload | Data

try {
    final response = api.instancesInstanceKeyMiscUserInfoPost(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MiscellaneousApi->instancesInstanceKeyMiscUserInfoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsUserInfoPayload**](StructsUserInfoPayload.md)| Data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

