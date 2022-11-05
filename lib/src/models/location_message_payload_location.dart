//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location_message_payload_location.g.dart';

/// LocationMessagePayloadLocation
///
/// Properties:
/// * [address] 
/// * [latitude] 
/// * [longitude] 
/// * [name] 
@BuiltValue()
abstract class LocationMessagePayloadLocation implements Built<LocationMessagePayloadLocation, LocationMessagePayloadLocationBuilder> {
  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'latitude')
  num get latitude;

  @BuiltValueField(wireName: r'longitude')
  num get longitude;

  @BuiltValueField(wireName: r'name')
  String get name;

  LocationMessagePayloadLocation._();

  factory LocationMessagePayloadLocation([void updates(LocationMessagePayloadLocationBuilder b)]) = _$LocationMessagePayloadLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocationMessagePayloadLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocationMessagePayloadLocation> get serializer => _$LocationMessagePayloadLocationSerializer();
}

class _$LocationMessagePayloadLocationSerializer implements PrimitiveSerializer<LocationMessagePayloadLocation> {
  @override
  final Iterable<Type> types = const [LocationMessagePayloadLocation, _$LocationMessagePayloadLocation];

  @override
  final String wireName = r'LocationMessagePayloadLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocationMessagePayloadLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(num),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(num),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LocationMessagePayloadLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LocationMessagePayloadLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.longitude = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LocationMessagePayloadLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocationMessagePayloadLocationBuilder();
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

