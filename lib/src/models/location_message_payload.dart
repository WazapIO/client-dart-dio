//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/location_message_payload_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location_message_payload.g.dart';

/// LocationMessagePayload
///
/// Properties:
/// * [location] 
/// * [to] 
/// * [url] 
@BuiltValue()
abstract class LocationMessagePayload implements Built<LocationMessagePayload, LocationMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'location')
  LocationMessagePayloadLocation get location;

  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'url')
  String? get url;

  LocationMessagePayload._();

  factory LocationMessagePayload([void updates(LocationMessagePayloadBuilder b)]) = _$LocationMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocationMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocationMessagePayload> get serializer => _$LocationMessagePayloadSerializer();
}

class _$LocationMessagePayloadSerializer implements PrimitiveSerializer<LocationMessagePayload> {
  @override
  final Iterable<Type> types = const [LocationMessagePayload, _$LocationMessagePayload];

  @override
  final String wireName = r'LocationMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocationMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(LocationMessagePayloadLocation),
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
    LocationMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LocationMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LocationMessagePayloadLocation),
          ) as LocationMessagePayloadLocation;
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
  LocationMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocationMessagePayloadBuilder();
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

