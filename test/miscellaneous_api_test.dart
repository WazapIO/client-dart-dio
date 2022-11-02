import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MiscellaneousApi
void main() {
  final instance = Openapi().getMiscellaneousApi();

  group(MiscellaneousApi, () {
    // Get profile pic.
    //
    // Returns the profile pic of the given user.
    //
    //Future<MainAPIResponse> instancesInstanceKeyMiscProfilePicGet(String instanceKey, String jid) async
    test('test instancesInstanceKeyMiscProfilePicGet', () async {
      // TODO
    });

    // Fetches the users info.
    //
    // Gets the user info for the given user ids. This does not checks if user is registered or not
    //
    //Future<MainAPIResponse> instancesInstanceKeyMiscUserInfoPost(String instanceKey, StructsUserInfoPayload data) async
    test('test instancesInstanceKeyMiscUserInfoPost', () async {
      // TODO
    });

  });
}
