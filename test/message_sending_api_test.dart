import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MessageSendingApi
void main() {
  final instance = Openapi().getMessageSendingApi();

  group(MessageSendingApi, () {
    // Fetches the catlog.
    //
    // Gets list of all products registered by you.
    //
    //Future<MainAPIResponse> instancesInstanceKeyBusinessCatalogGet(String instanceKey) async
    test('test instancesInstanceKeyBusinessCatalogGet', () async {
      // TODO
    });

    // Send raw audio.
    //
    // Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendAudioPost(String instanceKey, String to, InstancesInstanceKeySendAudioPostRequest instancesInstanceKeySendAudioPostRequest, { String caption }) async
    test('test instancesInstanceKeySendAudioPost', () async {
      // TODO
    });

    // Send a button message with a media header.
    //
    // Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique
    //
    //Future<MainAPIResponse> instancesInstanceKeySendButtonMediaPost(String instanceKey, StructsButtonMessageWithMediaPayload data) async
    test('test instancesInstanceKeySendButtonMediaPost', () async {
      // TODO
    });

    // Send a button message.
    //
    // Sends an interactive button message to the given user. Make sure that all the button ids are unique
    //
    //Future<MainAPIResponse> instancesInstanceKeySendButtonsPost(String instanceKey, StructsButtonMessagePayload data) async
    test('test instancesInstanceKeySendButtonsPost', () async {
      // TODO
    });

    // Send a contact message.
    //
    // Sends a contact (vcard) message to the given user.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendContactPost(String instanceKey, StructsContactMessagePayload data) async
    test('test instancesInstanceKeySendContactPost', () async {
      // TODO
    });

    // Send raw document.
    //
    // Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendDocumentPost(String instanceKey, String to, InstancesInstanceKeySendDocumentPostRequest instancesInstanceKeySendDocumentPostRequest, { String caption }) async
    test('test instancesInstanceKeySendDocumentPost', () async {
      // TODO
    });

    // Send raw image.
    //
    // Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendImagePost(String instanceKey, String to, InstancesInstanceKeySendImagePostRequest instancesInstanceKeySendImagePostRequest, { String caption }) async
    test('test instancesInstanceKeySendImagePost', () async {
      // TODO
    });

    // Send a List message.
    //
    // Sends an interactive List message to the given user.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendListPost(String instanceKey, StructsListMessagePayload data) async
    test('test instancesInstanceKeySendListPost', () async {
      // TODO
    });

    // Send a location message.
    //
    // Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional
    //
    //Future<MainAPIResponse> instancesInstanceKeySendLocationPost(String instanceKey, StructsLocationMessagePayload data) async
    test('test instancesInstanceKeySendLocationPost', () async {
      // TODO
    });

    // Send a media message.
    //
    // Sends a media message to the given user.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendMediaPost(String instanceKey, StructsSendMediaPayload data) async
    test('test instancesInstanceKeySendMediaPost', () async {
      // TODO
    });

    // Send a Poll message with media.
    //
    // Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendPollPost(String instanceKey, StructsPollMessagePayload data) async
    test('test instancesInstanceKeySendPollPost', () async {
      // TODO
    });

    // Send a template message with media.
    //
    // Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
    //
    //Future<MainAPIResponse> instancesInstanceKeySendTemplateMediaPost(String instanceKey, StructsTemplateButtonWithMediaPayload data) async
    test('test instancesInstanceKeySendTemplateMediaPost', () async {
      // TODO
    });

    // Send a template message.
    //
    // Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
    //
    //Future<MainAPIResponse> instancesInstanceKeySendTemplatePost(String instanceKey, StructsTemplateButtonPayload data) async
    test('test instancesInstanceKeySendTemplatePost', () async {
      // TODO
    });

    // Send a text message.
    //
    // Sends a text message to the given user.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendTextPost(String instanceKey, StructsTextMessage data) async
    test('test instancesInstanceKeySendTextPost', () async {
      // TODO
    });

    // Upload media.
    //
    // Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages
    //
    //Future<MainAPIResponse> instancesInstanceKeySendUploadPost(String instanceKey, String type, InstancesInstanceKeySendUploadPostRequest instancesInstanceKeySendUploadPostRequest) async
    test('test instancesInstanceKeySendUploadPost', () async {
      // TODO
    });

    // Send raw video.
    //
    // Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
    //
    //Future<MainAPIResponse> instancesInstanceKeySendVideoPost(String instanceKey, String to, InstancesInstanceKeySendVideoPostRequest instancesInstanceKeySendVideoPostRequest, { String caption }) async
    test('test instancesInstanceKeySendVideoPost', () async {
      // TODO
    });

  });
}
