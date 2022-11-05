//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/file_upload.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/models/reply_button.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'button_message_with_media_payload.g.dart';

/// ButtonMessageWithMediaPayload
///
/// Properties:
/// * [buttons] 
/// * [footerText] 
/// * [mediaData] 
/// * [text] 
/// * [to] 
@BuiltValue()
abstract class ButtonMessageWithMediaPayload implements Built<ButtonMessageWithMediaPayload, ButtonMessageWithMediaPayloadBuilder> {
  @BuiltValueField(wireName: r'buttons')
  BuiltList<ReplyButton>? get buttons;

  @BuiltValueField(wireName: r'footer_text')
  String? get footerText;

  @BuiltValueField(wireName: r'media_data')
  FileUpload? get mediaData;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'to')
  String? get to;

  ButtonMessageWithMediaPayload._();

  factory ButtonMessageWithMediaPayload([void updates(ButtonMessageWithMediaPayloadBuilder b)]) = _$ButtonMessageWithMediaPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ButtonMessageWithMediaPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ButtonMessageWithMediaPayload> get serializer => _$ButtonMessageWithMediaPayloadSerializer();
}

class _$ButtonMessageWithMediaPayloadSerializer implements PrimitiveSerializer<ButtonMessageWithMediaPayload> {
  @override
  final Iterable<Type> types = const [ButtonMessageWithMediaPayload, _$ButtonMessageWithMediaPayload];

  @override
  final String wireName = r'ButtonMessageWithMediaPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ButtonMessageWithMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buttons != null) {
      yield r'buttons';
      yield serializers.serialize(
        object.buttons,
        specifiedType: const FullType(BuiltList, [FullType(ReplyButton)]),
      );
    }
    if (object.footerText != null) {
      yield r'footer_text';
      yield serializers.serialize(
        object.footerText,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaData != null) {
      yield r'media_data';
      yield serializers.serialize(
        object.mediaData,
        specifiedType: const FullType(FileUpload),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ButtonMessageWithMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtonMessageWithMediaPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buttons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReplyButton)]),
          ) as BuiltList<ReplyButton>;
          result.buttons.replace(valueDes);
          break;
        case r'footer_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.footerText = valueDes;
          break;
        case r'media_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileUpload),
          ) as FileUpload;
          result.mediaData.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ButtonMessageWithMediaPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ButtonMessageWithMediaPayloadBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

