//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/models/reply_button.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'button_message_payload.g.dart';

/// ButtonMessagePayload
///
/// Properties:
/// * [buttons] 
/// * [footerText] 
/// * [headerText] 
/// * [text] 
/// * [to] 
@BuiltValue()
abstract class ButtonMessagePayload implements Built<ButtonMessagePayload, ButtonMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'buttons')
  BuiltList<ReplyButton>? get buttons;

  @BuiltValueField(wireName: r'footer_text')
  String? get footerText;

  @BuiltValueField(wireName: r'header_text')
  String? get headerText;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'to')
  String? get to;

  ButtonMessagePayload._();

  factory ButtonMessagePayload([void updates(ButtonMessagePayloadBuilder b)]) = _$ButtonMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ButtonMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ButtonMessagePayload> get serializer => _$ButtonMessagePayloadSerializer();
}

class _$ButtonMessagePayloadSerializer implements PrimitiveSerializer<ButtonMessagePayload> {
  @override
  final Iterable<Type> types = const [ButtonMessagePayload, _$ButtonMessagePayload];

  @override
  final String wireName = r'ButtonMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ButtonMessagePayload object, {
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
    if (object.headerText != null) {
      yield r'header_text';
      yield serializers.serialize(
        object.headerText,
        specifiedType: const FullType(String),
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
    ButtonMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtonMessagePayloadBuilder result,
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
        case r'header_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.headerText = valueDes;
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
  ButtonMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ButtonMessagePayloadBuilder();
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

