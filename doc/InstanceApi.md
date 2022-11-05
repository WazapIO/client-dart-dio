# openapi.api.InstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeWebhookUrl**](InstanceApi.md#changewebhookurl) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**createInstance**](InstanceApi.md#createinstance) | **GET** /instances/create | Creates a new instance key.
[**deleteInstance**](InstanceApi.md#deleteinstance) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**getContacts**](InstanceApi.md#getcontacts) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**getInstance**](InstanceApi.md#getinstance) | **GET** /instances/{instance_key}/ | Get Instance.
[**getQrCode**](InstanceApi.md#getqrcode) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**listInstances**](InstanceApi.md#listinstances) | **GET** /instances/list | Get all instances.
[**logoutInstance**](InstanceApi.md#logoutinstance) | **DELETE** /instances/{instance_key}/logout | Logout Instance.


# **changeWebhookUrl**
> APIResponse changeWebhookUrl(instanceKey, data)

Change Webhook url.

Changes the webhook url of an instance.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key
final WebhookPayload data = ; // WebhookPayload | Message data

try {
    final response = api.changeWebhookUrl(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->changeWebhookUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**WebhookPayload**](WebhookPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInstance**
> APIResponse createInstance(instanceKey)

Creates a new instance key.

This endpoint is used to create a new WhatsApp Web instance.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Insert instance key if you want to provide custom key

try {
    final response = api.createInstance(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->createInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstance**
> APIResponse deleteInstance(instanceKey)

Delete Instance.

Deletes the instance with the provided key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.deleteInstance(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->deleteInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContacts**
> APIResponse getContacts(instanceKey)

Get contacts.

Fetches the list of contacts in the instance.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.getContacts(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->getContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstance**
> APIResponse getInstance(instanceKey)

Get Instance.

Returns the instance data of single instance with connection status.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.getInstance(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->getInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQrCode**
> APIResponse getQrCode(instanceKey)

Get QrCode.

Returns the qrcode in the base64 format.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.getQrCode(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->getQrCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInstances**
> APIResponse listInstances()

Get all instances.

Fetches the list of all Instances with login status.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();

try {
    final response = api.listInstances();
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->listInstances: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutInstance**
> APIResponse logoutInstance(instanceKey)

Logout Instance.

Logouts of the instance with the provided key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getInstanceApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.logoutInstance(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->logoutInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

