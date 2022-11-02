import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GroupManagementApi
void main() {
  final instance = Openapi().getGroupManagementApi();

  group(GroupManagementApi, () {
    // Get admin groupss.
    //
    // Returns list of all groups in which you are admin.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsAdminGet(String instanceKey) async
    test('test instancesInstanceKeyGroupsAdminGet', () async {
      // TODO
    });

    // Create group.
    //
    // Creates a group with the participant data. The creator is automatically added to the group.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsCreatePost(String instanceKey, StructsGroupCreatePayload data) async
    test('test instancesInstanceKeyGroupsCreatePost', () async {
      // TODO
    });

    // Get all groups.
    //
    // Returns list of all groups with participants data. Set include_participants to false to exclude participants data.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGet(String instanceKey, { String includeParticipants }) async
    test('test instancesInstanceKeyGroupsGet', () async {
      // TODO
    });

    // Set group announce.
    //
    // Set if non-admins are allowed to send messages in groups
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdAnnouncePut(String instanceKey, bool announce, String groupId) async
    test('test instancesInstanceKeyGroupsGroupIdAnnouncePut', () async {
      // TODO
    });

    // Leaves the group.
    //
    // Leaves the specified group.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdDelete(String instanceKey, String groupId) async
    test('test instancesInstanceKeyGroupsGroupIdDelete', () async {
      // TODO
    });

    // Set group description.
    //
    // Changes the group description
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdDescriptionPut(String instanceKey, String groupId, StructsGroupUpdateDescriptionPayload data) async
    test('test instancesInstanceKeyGroupsGroupIdDescriptionPut', () async {
      // TODO
    });

    // Get group.
    //
    // Fetches the group data.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdGet(String instanceKey, String groupId) async
    test('test instancesInstanceKeyGroupsGroupIdGet', () async {
      // TODO
    });

    // Get group invite code.
    //
    // Gets the invite code of the group.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdInviteCodeGet(String instanceKey, String groupId) async
    test('test instancesInstanceKeyGroupsGroupIdInviteCodeGet', () async {
      // TODO
    });

    // Set group locked.
    //
    // Set if non-admins are allowed to change the group dp and other stuff
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdLockPut(String instanceKey, bool locked, String groupId) async
    test('test instancesInstanceKeyGroupsGroupIdLockPut', () async {
      // TODO
    });

    // Set group name.
    //
    // Changes the group name. The max limit is 22 chars
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdNamePut(String instanceKey, String groupId, StructsGroupUpdateNamePayload data) async
    test('test instancesInstanceKeyGroupsGroupIdNamePut', () async {
      // TODO
    });

    // Add participant.
    //
    // Handles adding participants to a group. You must be admin in the group or the query will fail.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdParticipantsAddPost(String instanceKey, String groupId, StructsGroupUpdateParticipantsPayload data) async
    test('test instancesInstanceKeyGroupsGroupIdParticipantsAddPost', () async {
      // TODO
    });

    // Demote participant.
    //
    // Demotes admins in groups. You must be admin in the group or the query will fail.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdParticipantsDemotePut(String instanceKey, String groupId, StructsGroupUpdateParticipantsPayload data) async
    test('test instancesInstanceKeyGroupsGroupIdParticipantsDemotePut', () async {
      // TODO
    });

    // Promote participant.
    //
    // Promotes participants to admin. You must be admin in the group or the query will fail.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdParticipantsPromotePut(String instanceKey, String groupId, StructsGroupUpdateParticipantsPayload data) async
    test('test instancesInstanceKeyGroupsGroupIdParticipantsPromotePut', () async {
      // TODO
    });

    // Remove participant.
    //
    // Handles removing participants from a group. You must be admin in the group or the query will fail.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdParticipantsRemoveDelete(String instanceKey, String groupId, StructsGroupUpdateParticipantsPayload data) async
    test('test instancesInstanceKeyGroupsGroupIdParticipantsRemoveDelete', () async {
      // TODO
    });

    // Set group picture.
    //
    // Changes the group profile picture. Currently it only seems to accept JPEG images only
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsGroupIdProfilePicPut(String instanceKey, String groupId, InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest instancesInstanceKeyGroupsGroupIdProfilePicPutRequest) async
    test('test instancesInstanceKeyGroupsGroupIdProfilePicPut', () async {
      // TODO
    });

    // Get group from invite link.
    //
    // Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}
    //
    //Future<MainAPIResponse> instancesInstanceKeyGroupsInviteInfoGet(String instanceKey, String inviteLink) async
    test('test instancesInstanceKeyGroupsInviteInfoGet', () async {
      // TODO
    });

  });
}
