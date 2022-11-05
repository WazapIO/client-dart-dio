//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/models/date.dart';

import 'package:openapi/src/models/api_response.dart';
import 'package:openapi/src/models/button_message_payload.dart';
import 'package:openapi/src/models/button_message_with_media_payload.dart';
import 'package:openapi/src/models/contact_message_payload.dart';
import 'package:openapi/src/models/contact_message_payload_vcard.dart';
import 'package:openapi/src/models/file_upload.dart';
import 'package:openapi/src/models/group_create_payload.dart';
import 'package:openapi/src/models/group_update_description_payload.dart';
import 'package:openapi/src/models/group_update_name_payload.dart';
import 'package:openapi/src/models/group_update_participants_payload.dart';
import 'package:openapi/src/models/list_item.dart';
import 'package:openapi/src/models/list_message_payload.dart';
import 'package:openapi/src/models/list_section.dart';
import 'package:openapi/src/models/location_message_payload.dart';
import 'package:openapi/src/models/location_message_payload_location.dart';
import 'package:openapi/src/models/poll_message_payload.dart';
import 'package:openapi/src/models/reply_button.dart';
import 'package:openapi/src/models/send_audio_request.dart';
import 'package:openapi/src/models/send_document_request.dart';
import 'package:openapi/src/models/send_image_request.dart';
import 'package:openapi/src/models/send_media_payload.dart';
import 'package:openapi/src/models/send_video_request.dart';
import 'package:openapi/src/models/set_group_picture_request.dart';
import 'package:openapi/src/models/template_button.dart';
import 'package:openapi/src/models/template_button_payload.dart';
import 'package:openapi/src/models/template_button_with_media_payload.dart';
import 'package:openapi/src/models/text_message.dart';
import 'package:openapi/src/models/upload_media_request.dart';
import 'package:openapi/src/models/user_info_payload.dart';
import 'package:openapi/src/models/webhook_payload.dart';

part 'serializers.g.dart';

@SerializersFor([
  APIResponse,
  ButtonMessagePayload,
  ButtonMessageWithMediaPayload,
  ContactMessagePayload,
  ContactMessagePayloadVcard,
  FileUpload,
  GroupCreatePayload,
  GroupUpdateDescriptionPayload,
  GroupUpdateNamePayload,
  GroupUpdateParticipantsPayload,
  ListItem,
  ListMessagePayload,
  ListSection,
  LocationMessagePayload,
  LocationMessagePayloadLocation,
  PollMessagePayload,
  ReplyButton,
  SendAudioRequest,
  SendDocumentRequest,
  SendImageRequest,
  SendMediaPayload,
  SendVideoRequest,
  SetGroupPictureRequest,
  TemplateButton,
  TemplateButtonPayload,
  TemplateButtonWithMediaPayload,
  TextMessage,
  UploadMediaRequest,
  UserInfoPayload,
  WebhookPayload,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
