# openapi.api.BusinessManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchCatlog**](BusinessManagementApi.md#fetchcatlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
[**sendPaymentRequest**](BusinessManagementApi.md#sendpaymentrequest) | **POST** /instances/{instance_key}/business/payment-request | Send a payment request.


# **fetchCatlog**
> APIResponse fetchCatlog(instanceKey)

Fetches the catlog.

Gets list of all products registered by you.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getBusinessManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.fetchCatlog(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BusinessManagementApi->fetchCatlog: $e\n');
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

# **sendPaymentRequest**
> APIResponse sendPaymentRequest(instanceKey, data)

Send a payment request.

Sends an payment request to a user. Feature is still in beta.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getBusinessManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final PaymentRequestPayload data = ; // PaymentRequestPayload | Data

try {
    final response = api.sendPaymentRequest(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BusinessManagementApi->sendPaymentRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**PaymentRequestPayload**](PaymentRequestPayload.md)| Data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

