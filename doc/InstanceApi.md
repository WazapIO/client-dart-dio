# openapi.api.InstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesCreateGet**](InstanceApi.md#instancescreateget) | **GET** /instances/create | Creates a new instance key.
[**instancesInstanceKeyContactsGet**](InstanceApi.md#instancesinstancekeycontactsget) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**instancesInstanceKeyDeleteDelete**](InstanceApi.md#instancesinstancekeydeletedelete) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**instancesInstanceKeyGet**](InstanceApi.md#instancesinstancekeyget) | **GET** /instances/{instance_key}/ | Get Instance.
[**instancesInstanceKeyLogoutDelete**](InstanceApi.md#instancesinstancekeylogoutdelete) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
[**instancesInstanceKeyQrcodeGet**](InstanceApi.md#instancesinstancekeyqrcodeget) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**instancesInstanceKeyWebhookPut**](InstanceApi.md#instancesinstancekeywebhookput) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**instancesListGet**](InstanceApi.md#instanceslistget) | **GET** /instances/list | Get all instances.


# **instancesCreateGet**
> MainAPIResponse instancesCreateGet(instanceKey)

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
    final response = api.instancesCreateGet(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesCreateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyContactsGet**
> MainAPIResponse instancesInstanceKeyContactsGet(instanceKey)

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
    final response = api.instancesInstanceKeyContactsGet(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyContactsGet: $e\n');
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

# **instancesInstanceKeyDeleteDelete**
> MainAPIResponse instancesInstanceKeyDeleteDelete(instanceKey)

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
    final response = api.instancesInstanceKeyDeleteDelete(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyDeleteDelete: $e\n');
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

# **instancesInstanceKeyGet**
> MainAPIResponse instancesInstanceKeyGet(instanceKey)

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
    final response = api.instancesInstanceKeyGet(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyGet: $e\n');
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

# **instancesInstanceKeyLogoutDelete**
> MainAPIResponse instancesInstanceKeyLogoutDelete(instanceKey)

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
    final response = api.instancesInstanceKeyLogoutDelete(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyLogoutDelete: $e\n');
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

# **instancesInstanceKeyQrcodeGet**
> MainAPIResponse instancesInstanceKeyQrcodeGet(instanceKey)

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
    final response = api.instancesInstanceKeyQrcodeGet(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyQrcodeGet: $e\n');
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

# **instancesInstanceKeyWebhookPut**
> MainAPIResponse instancesInstanceKeyWebhookPut(instanceKey, data)

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
final StructsWebhookPayload data = ; // StructsWebhookPayload | Message data

try {
    final response = api.instancesInstanceKeyWebhookPut(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesInstanceKeyWebhookPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**StructsWebhookPayload**](StructsWebhookPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesListGet**
> MainAPIResponse instancesListGet()

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
    final response = api.instancesListGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling InstanceApi->instancesListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

