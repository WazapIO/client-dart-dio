//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_webhook_payload.g.dart';

/// StructsWebhookPayload
///
/// Properties:
/// * [webhookUrl] 
@BuiltValue()
abstract class StructsWebhookPayload implements Built<StructsWebhookPayload, StructsWebhookPayloadBuilder> {
  @BuiltValueField(wireName: r'webhook_url')
  String? get webhookUrl;

  StructsWebhookPayload._();

  factory StructsWebhookPayload([void updates(StructsWebhookPayloadBuilder b)]) = _$StructsWebhookPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsWebhookPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsWebhookPayload> get serializer => _$StructsWebhookPayloadSerializer();
}

class _$StructsWebhookPayloadSerializer implements PrimitiveSerializer<StructsWebhookPayload> {
  @override
  final Iterable<Type> types = const [StructsWebhookPayload, _$StructsWebhookPayload];

  @override
  final String wireName = r'StructsWebhookPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsWebhookPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.webhookUrl != null) {
      yield r'webhook_url';
      yield serializers.serialize(
        object.webhookUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsWebhookPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsWebhookPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'webhook_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webhookUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsWebhookPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsWebhookPayloadBuilder();
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

