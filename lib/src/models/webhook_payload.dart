//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_payload.g.dart';

/// WebhookPayload
///
/// Properties:
/// * [webhookUrl] 
@BuiltValue()
abstract class WebhookPayload implements Built<WebhookPayload, WebhookPayloadBuilder> {
  @BuiltValueField(wireName: r'webhook_url')
  String? get webhookUrl;

  WebhookPayload._();

  factory WebhookPayload([void updates(WebhookPayloadBuilder b)]) = _$WebhookPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookPayload> get serializer => _$WebhookPayloadSerializer();
}

class _$WebhookPayloadSerializer implements PrimitiveSerializer<WebhookPayload> {
  @override
  final Iterable<Type> types = const [WebhookPayload, _$WebhookPayload];

  @override
  final String wireName = r'WebhookPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookPayload object, {
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
    WebhookPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookPayloadBuilder result,
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
  WebhookPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookPayloadBuilder();
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

