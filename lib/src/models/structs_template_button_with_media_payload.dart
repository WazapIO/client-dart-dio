//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/structs_template_button.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/models/structs_file_upload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_template_button_with_media_payload.g.dart';

/// StructsTemplateButtonWithMediaPayload
///
/// Properties:
/// * [buttons] 
/// * [contentText] 
/// * [footer] 
/// * [media] 
/// * [to] 
@BuiltValue()
abstract class StructsTemplateButtonWithMediaPayload implements Built<StructsTemplateButtonWithMediaPayload, StructsTemplateButtonWithMediaPayloadBuilder> {
  @BuiltValueField(wireName: r'buttons')
  BuiltList<StructsTemplateButton> get buttons;

  @BuiltValueField(wireName: r'content_text')
  String? get contentText;

  @BuiltValueField(wireName: r'footer')
  String? get footer;

  @BuiltValueField(wireName: r'media')
  StructsFileUpload get media;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructsTemplateButtonWithMediaPayload._();

  factory StructsTemplateButtonWithMediaPayload([void updates(StructsTemplateButtonWithMediaPayloadBuilder b)]) = _$StructsTemplateButtonWithMediaPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsTemplateButtonWithMediaPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsTemplateButtonWithMediaPayload> get serializer => _$StructsTemplateButtonWithMediaPayloadSerializer();
}

class _$StructsTemplateButtonWithMediaPayloadSerializer implements PrimitiveSerializer<StructsTemplateButtonWithMediaPayload> {
  @override
  final Iterable<Type> types = const [StructsTemplateButtonWithMediaPayload, _$StructsTemplateButtonWithMediaPayload];

  @override
  final String wireName = r'StructsTemplateButtonWithMediaPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsTemplateButtonWithMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buttons';
    yield serializers.serialize(
      object.buttons,
      specifiedType: const FullType(BuiltList, [FullType(StructsTemplateButton)]),
    );
    if (object.contentText != null) {
      yield r'content_text';
      yield serializers.serialize(
        object.contentText,
        specifiedType: const FullType(String),
      );
    }
    if (object.footer != null) {
      yield r'footer';
      yield serializers.serialize(
        object.footer,
        specifiedType: const FullType(String),
      );
    }
    yield r'media';
    yield serializers.serialize(
      object.media,
      specifiedType: const FullType(StructsFileUpload),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsTemplateButtonWithMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsTemplateButtonWithMediaPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buttons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StructsTemplateButton)]),
          ) as BuiltList<StructsTemplateButton>;
          result.buttons.replace(valueDes);
          break;
        case r'content_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentText = valueDes;
          break;
        case r'footer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.footer = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StructsFileUpload),
          ) as StructsFileUpload;
          result.media.replace(valueDes);
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
  StructsTemplateButtonWithMediaPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsTemplateButtonWithMediaPayloadBuilder();
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

