//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/structs_template_button.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_template_button_payload.g.dart';

/// StructsTemplateButtonPayload
///
/// Properties:
/// * [buttons] 
/// * [contentText] 
/// * [footer] 
/// * [header] 
/// * [to] 
@BuiltValue()
abstract class StructsTemplateButtonPayload implements Built<StructsTemplateButtonPayload, StructsTemplateButtonPayloadBuilder> {
  @BuiltValueField(wireName: r'buttons')
  BuiltList<StructsTemplateButton> get buttons;

  @BuiltValueField(wireName: r'content_text')
  String? get contentText;

  @BuiltValueField(wireName: r'footer')
  String? get footer;

  @BuiltValueField(wireName: r'header')
  String? get header;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructsTemplateButtonPayload._();

  factory StructsTemplateButtonPayload([void updates(StructsTemplateButtonPayloadBuilder b)]) = _$StructsTemplateButtonPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsTemplateButtonPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsTemplateButtonPayload> get serializer => _$StructsTemplateButtonPayloadSerializer();
}

class _$StructsTemplateButtonPayloadSerializer implements PrimitiveSerializer<StructsTemplateButtonPayload> {
  @override
  final Iterable<Type> types = const [StructsTemplateButtonPayload, _$StructsTemplateButtonPayload];

  @override
  final String wireName = r'StructsTemplateButtonPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsTemplateButtonPayload object, {
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
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType(String),
      );
    }
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsTemplateButtonPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsTemplateButtonPayloadBuilder result,
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
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.header = valueDes;
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
  StructsTemplateButtonPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsTemplateButtonPayloadBuilder();
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

