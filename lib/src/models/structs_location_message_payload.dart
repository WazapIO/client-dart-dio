//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/structs_location_message_payload_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_location_message_payload.g.dart';

/// StructsLocationMessagePayload
///
/// Properties:
/// * [location] 
/// * [to] 
/// * [url] 
@BuiltValue()
abstract class StructsLocationMessagePayload implements Built<StructsLocationMessagePayload, StructsLocationMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'location')
  StructsLocationMessagePayloadLocation get location;

  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'url')
  String? get url;

  StructsLocationMessagePayload._();

  factory StructsLocationMessagePayload([void updates(StructsLocationMessagePayloadBuilder b)]) = _$StructsLocationMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsLocationMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsLocationMessagePayload> get serializer => _$StructsLocationMessagePayloadSerializer();
}

class _$StructsLocationMessagePayloadSerializer implements PrimitiveSerializer<StructsLocationMessagePayload> {
  @override
  final Iterable<Type> types = const [StructsLocationMessagePayload, _$StructsLocationMessagePayload];

  @override
  final String wireName = r'StructsLocationMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsLocationMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(StructsLocationMessagePayloadLocation),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsLocationMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsLocationMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StructsLocationMessagePayloadLocation),
          ) as StructsLocationMessagePayloadLocation;
          result.location.replace(valueDes);
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsLocationMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsLocationMessagePayloadBuilder();
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

