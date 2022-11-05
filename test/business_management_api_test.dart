import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BusinessManagementApi
void main() {
  final instance = Openapi().getBusinessManagementApi();

  group(BusinessManagementApi, () {
    // Fetches the catlog.
    //
    // Gets list of all products registered by you.
    //
    //Future<APIResponse> instancesInstanceKeyBusinessCatalogGet(String instanceKey) async
    test('test instancesInstanceKeyBusinessCatalogGet', () async {
      // TODO
    });

  });
}
