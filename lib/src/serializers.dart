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

import 'package:openapi/src/models/instances_instance_key_groups_group_id_profile_pic_put_request.dart';
import 'package:openapi/src/models/instances_instance_key_send_audio_post_request.dart';
import 'package:openapi/src/models/instances_instance_key_send_document_post_request.dart';
import 'package:openapi/src/models/instances_instance_key_send_image_post_request.dart';
import 'package:openapi/src/models/instances_instance_key_send_upload_post_request.dart';
import 'package:openapi/src/models/instances_instance_key_send_video_post_request.dart';
import 'package:openapi/src/models/main_api_response.dart';
import 'package:openapi/src/models/structs_button_message_payload.dart';
import 'package:openapi/src/models/structs_button_message_with_media_payload.dart';
import 'package:openapi/src/models/structs_contact_message_payload.dart';
import 'package:openapi/src/models/structs_contact_message_payload_vcard.dart';
import 'package:openapi/src/models/structs_file_upload.dart';
import 'package:openapi/src/models/structs_group_create_payload.dart';
import 'package:openapi/src/models/structs_group_update_description_payload.dart';
import 'package:openapi/src/models/structs_group_update_name_payload.dart';
import 'package:openapi/src/models/structs_group_update_participants_payload.dart';
import 'package:openapi/src/models/structs_list_item.dart';
import 'package:openapi/src/models/structs_list_message_payload.dart';
import 'package:openapi/src/models/structs_list_section.dart';
import 'package:openapi/src/models/structs_location_message_payload.dart';
import 'package:openapi/src/models/structs_location_message_payload_location.dart';
import 'package:openapi/src/models/structs_poll_message_payload.dart';
import 'package:openapi/src/models/structs_reply_button.dart';
import 'package:openapi/src/models/structs_send_media_payload.dart';
import 'package:openapi/src/models/structs_template_button.dart';
import 'package:openapi/src/models/structs_template_button_payload.dart';
import 'package:openapi/src/models/structs_template_button_with_media_payload.dart';
import 'package:openapi/src/models/structs_text_message.dart';
import 'package:openapi/src/models/structs_user_info_payload.dart';
import 'package:openapi/src/models/structs_webhook_payload.dart';

part 'serializers.g.dart';

@SerializersFor([
  InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest,
  InstancesInstanceKeySendAudioPostRequest,
  InstancesInstanceKeySendDocumentPostRequest,
  InstancesInstanceKeySendImagePostRequest,
  InstancesInstanceKeySendUploadPostRequest,
  InstancesInstanceKeySendVideoPostRequest,
  MainAPIResponse,
  StructsButtonMessagePayload,
  StructsButtonMessageWithMediaPayload,
  StructsContactMessagePayload,
  StructsContactMessagePayloadVcard,
  StructsFileUpload,
  StructsGroupCreatePayload,
  StructsGroupUpdateDescriptionPayload,
  StructsGroupUpdateNamePayload,
  StructsGroupUpdateParticipantsPayload,
  StructsListItem,
  StructsListMessagePayload,
  StructsListSection,
  StructsLocationMessagePayload,
  StructsLocationMessagePayloadLocation,
  StructsPollMessagePayload,
  StructsReplyButton,
  StructsSendMediaPayload,
  StructsTemplateButton,
  StructsTemplateButtonPayload,
  StructsTemplateButtonWithMediaPayload,
  StructsTextMessage,
  StructsUserInfoPayload,
  StructsWebhookPayload,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
