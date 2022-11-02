import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for InstanceApi
void main() {
  final instance = Openapi().getInstanceApi();

  group(InstanceApi, () {
    // Creates a new instance key.
    //
    // This endpoint is used to create a new WhatsApp Web instance.
    //
    //Future<MainAPIResponse> instancesCreateGet({ String instanceKey }) async
    test('test instancesCreateGet', () async {
      // TODO
    });

    // Get contacts.
    //
    // Fetches the list of contacts in the instance.
    //
    //Future<MainAPIResponse> instancesInstanceKeyContactsGet(String instanceKey) async
    test('test instancesInstanceKeyContactsGet', () async {
      // TODO
    });

    // Delete Instance.
    //
    // Deletes the instance with the provided key.
    //
    //Future<MainAPIResponse> instancesInstanceKeyDeleteDelete(String instanceKey) async
    test('test instancesInstanceKeyDeleteDelete', () async {
      // TODO
    });

    // Get Instance.
    //
    // Returns the instance data of single instance with connection status.
    //
    //Future<MainAPIResponse> instancesInstanceKeyGet(String instanceKey) async
    test('test instancesInstanceKeyGet', () async {
      // TODO
    });

    // Logout Instance.
    //
    // Logouts of the instance with the provided key.
    //
    //Future<MainAPIResponse> instancesInstanceKeyLogoutDelete(String instanceKey) async
    test('test instancesInstanceKeyLogoutDelete', () async {
      // TODO
    });

    // Get QrCode.
    //
    // Returns the qrcode in the base64 format.
    //
    //Future<MainAPIResponse> instancesInstanceKeyQrcodeGet(String instanceKey) async
    test('test instancesInstanceKeyQrcodeGet', () async {
      // TODO
    });

    // Change Webhook url.
    //
    // Changes the webhook url of an instance.
    //
    //Future<MainAPIResponse> instancesInstanceKeyWebhookPut(String instanceKey, StructsWebhookPayload data) async
    test('test instancesInstanceKeyWebhookPut', () async {
      // TODO
    });

    // Get all instances.
    //
    // Fetches the list of all Instances with login status.
    //
    //Future<MainAPIResponse> instancesListGet() async
    test('test instancesListGet', () async {
      // TODO
    });

  });
}
