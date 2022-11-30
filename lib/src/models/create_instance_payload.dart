//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_instance_payload.g.dart';

/// CreateInstancePayload
///
/// Properties:
/// * [instanceKey] 
/// * [webhookUrl] 
@BuiltValue()
abstract class CreateInstancePayload implements Built<CreateInstancePayload, CreateInstancePayloadBuilder> {
  @BuiltValueField(wireName: r'instance_key')
  String? get instanceKey;

  @BuiltValueField(wireName: r'webhook_url')
  String? get webhookUrl;

  CreateInstancePayload._();

  factory CreateInstancePayload([void updates(CreateInstancePayloadBuilder b)]) = _$CreateInstancePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInstancePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInstancePayload> get serializer => _$CreateInstancePayloadSerializer();
}

class _$CreateInstancePayloadSerializer implements PrimitiveSerializer<CreateInstancePayload> {
  @override
  final Iterable<Type> types = const [CreateInstancePayload, _$CreateInstancePayload];

  @override
  final String wireName = r'CreateInstancePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInstancePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.instanceKey != null) {
      yield r'instance_key';
      yield serializers.serialize(
        object.instanceKey,
        specifiedType: const FullType(String),
      );
    }
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
    CreateInstancePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInstancePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instance_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instanceKey = valueDes;
          break;
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
  CreateInstancePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstancePayloadBuilder();
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

