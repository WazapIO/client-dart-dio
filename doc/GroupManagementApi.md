# openapi.api.GroupManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addParticipant**](GroupManagementApi.md#addparticipant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
[**createGroup**](GroupManagementApi.md#creategroup) | **POST** /instances/{instance_key}/groups/create | Create group.
[**demoteParticipant**](GroupManagementApi.md#demoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
[**getAdminGroups**](GroupManagementApi.md#getadmingroups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups.
[**getAllGroups**](GroupManagementApi.md#getallgroups) | **GET** /instances/{instance_key}/groups/ | Get all groups.
[**getAllParticipants**](GroupManagementApi.md#getallparticipants) | **GET** /instances/{instance_key}/groups/{group_id}/participants | Get all participants.
[**getGroup**](GroupManagementApi.md#getgroup) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
[**getGroupFromInviteLink**](GroupManagementApi.md#getgroupfrominvitelink) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
[**getGroupInviteCode**](GroupManagementApi.md#getgroupinvitecode) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
[**joinGroupWithLink**](GroupManagementApi.md#joingroupwithlink) | **GET** /instances/{instance_key}/groups/join | Join group with invite code.
[**leaveGroup**](GroupManagementApi.md#leavegroup) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
[**promoteParticipant**](GroupManagementApi.md#promoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
[**removeParticipant**](GroupManagementApi.md#removeparticipant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
[**setGroupAnnounce**](GroupManagementApi.md#setgroupannounce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
[**setGroupDescription**](GroupManagementApi.md#setgroupdescription) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
[**setGroupLocked**](GroupManagementApi.md#setgrouplocked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
[**setGroupName**](GroupManagementApi.md#setgroupname) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
[**setGroupPicture**](GroupManagementApi.md#setgrouppicture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.


# **addParticipant**
> APIResponse addParticipant(instanceKey, groupId, data)

Add participant.

Handles adding participants to a group. You must be admin in the group or the query will fail.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateParticipantsPayload data = ; // GroupUpdateParticipantsPayload | Group update payload

try {
    final response = api.addParticipant(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->addParticipant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
> APIResponse createGroup(instanceKey, data)

Create group.

Creates a group with the participant data. The creator is automatically added to the group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final GroupCreatePayload data = ; // GroupCreatePayload | Group create payload

try {
    final response = api.createGroup(instanceKey, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **data** | [**GroupCreatePayload**](GroupCreatePayload.md)| Group create payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteParticipant**
> APIResponse demoteParticipant(instanceKey, groupId, data)

Demote participant.

Demotes admins in groups. You must be admin in the group or the query will fail.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateParticipantsPayload data = ; // GroupUpdateParticipantsPayload | Group update payload

try {
    final response = api.demoteParticipant(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->demoteParticipant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAdminGroups**
> APIResponse getAdminGroups(instanceKey)

Get admin groups.

Returns list of all groups in which you are admin.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key

try {
    final response = api.getAdminGroups(instanceKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getAdminGroups: $e\n');
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

# **getAllGroups**
> APIResponse getAllGroups(instanceKey, includeParticipants)

Get all groups.

Returns list of all groups with participants data. Set include_participants to false to exclude participants data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String includeParticipants = includeParticipants_example; // String | Include participants data

try {
    final response = api.getAllGroups(instanceKey, includeParticipants);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getAllGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **includeParticipants** | **String**| Include participants data | [optional] [default to 'true']

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllParticipants**
> APIResponse getAllParticipants(instanceKey, groupId)

Get all participants.

Returns all participants of the group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.getAllParticipants(instanceKey, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getAllParticipants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> APIResponse getGroup(instanceKey, groupId)

Get group.

Fetches the group data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.getGroup(instanceKey, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFromInviteLink**
> APIResponse getGroupFromInviteLink(instanceKey, inviteLink)

Get group from invite link.

Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String inviteLink = inviteLink_example; // String | The invite link to check

try {
    final response = api.getGroupFromInviteLink(instanceKey, inviteLink);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getGroupFromInviteLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **inviteLink** | **String**| The invite link to check | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupInviteCode**
> APIResponse getGroupInviteCode(instanceKey, groupId)

Get group invite code.

Gets the invite code of the group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.getGroupInviteCode(instanceKey, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->getGroupInviteCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinGroupWithLink**
> APIResponse joinGroupWithLink(instanceKey, inviteCode)

Join group with invite code.

Joins a group with group invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode} You have to put invite_code in the url of the request. The invite code is the part after https://chat.whatsapp.com/ For example, if the invite link is https://chat.whatsapp.com/dsfsf34r3d3dsds, then the invite code is `dsfsf34r3d3dsds“

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String inviteCode = inviteCode_example; // String | The invite code of group you want to join

try {
    final response = api.joinGroupWithLink(instanceKey, inviteCode);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->joinGroupWithLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **inviteCode** | **String**| The invite code of group you want to join | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaveGroup**
> APIResponse leaveGroup(instanceKey, groupId)

Leaves the group.

Leaves the specified group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.leaveGroup(instanceKey, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->leaveGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteParticipant**
> APIResponse promoteParticipant(instanceKey, groupId, data)

Promote participant.

Promotes participants to admin. You must be admin in the group or the query will fail.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateParticipantsPayload data = ; // GroupUpdateParticipantsPayload | Group update payload

try {
    final response = api.promoteParticipant(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->promoteParticipant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeParticipant**
> APIResponse removeParticipant(instanceKey, groupId, data)

Remove participant.

Handles removing participants from a group. You must be admin in the group or the query will fail.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateParticipantsPayload data = ; // GroupUpdateParticipantsPayload | Group update payload

try {
    final response = api.removeParticipant(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->removeParticipant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupAnnounce**
> APIResponse setGroupAnnounce(instanceKey, announce, groupId)

Set group announce.

Set if non-admins are allowed to send messages in groups

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final bool announce = true; // bool | Announce status
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.setGroupAnnounce(instanceKey, announce, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->setGroupAnnounce: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **announce** | **bool**| Announce status | [default to false]
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupDescription**
> APIResponse setGroupDescription(instanceKey, groupId, data)

Set group description.

Changes the group description

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateDescriptionPayload data = ; // GroupUpdateDescriptionPayload | Group description data

try {
    final response = api.setGroupDescription(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->setGroupDescription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateDescriptionPayload**](GroupUpdateDescriptionPayload.md)| Group description data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupLocked**
> APIResponse setGroupLocked(instanceKey, locked, groupId)

Set group locked.

Set if non-admins are allowed to change the group dp and other stuff

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final bool locked = true; // bool | Locked status
final String groupId = groupId_example; // String | Group id of the group

try {
    final response = api.setGroupLocked(instanceKey, locked, groupId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->setGroupLocked: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **locked** | **bool**| Locked status | [default to false]
 **groupId** | **String**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupName**
> APIResponse setGroupName(instanceKey, groupId, data)

Set group name.

Changes the group name. The max limit is 22 chars

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final GroupUpdateNamePayload data = ; // GroupUpdateNamePayload | Group name data

try {
    final response = api.setGroupName(instanceKey, groupId, data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->setGroupName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **data** | [**GroupUpdateNamePayload**](GroupUpdateNamePayload.md)| Group name data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupPicture**
> APIResponse setGroupPicture(instanceKey, groupId, setGroupPictureRequest)

Set group picture.

Changes the group profile picture. Currently it only seems to accept JPEG images only

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupManagementApi();
final String instanceKey = instanceKey_example; // String | Instance key
final String groupId = groupId_example; // String | Group id of the group
final SetGroupPictureRequest setGroupPictureRequest = ; // SetGroupPictureRequest | 

try {
    final response = api.setGroupPicture(instanceKey, groupId, setGroupPictureRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupManagementApi->setGroupPicture: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **String**| Instance key | 
 **groupId** | **String**| Group id of the group | 
 **setGroupPictureRequest** | [**SetGroupPictureRequest**](SetGroupPictureRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

