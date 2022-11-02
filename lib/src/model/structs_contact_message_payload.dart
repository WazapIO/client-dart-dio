//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/structs_contact_message_payload_vcard.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_contact_message_payload.g.dart';

/// StructsContactMessagePayload
///
/// Properties:
/// * [to] 
/// * [vcard] 
@BuiltValue()
abstract class StructsContactMessagePayload implements Built<StructsContactMessagePayload, StructsContactMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'vcard')
  StructsContactMessagePayloadVcard get vcard;

  StructsContactMessagePayload._();

  factory StructsContactMessagePayload([void updates(StructsContactMessagePayloadBuilder b)]) = _$StructsContactMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsContactMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsContactMessagePayload> get serializer => _$StructsContactMessagePayloadSerializer();
}

class _$StructsContactMessagePayloadSerializer implements PrimitiveSerializer<StructsContactMessagePayload> {
  @override
  final Iterable<Type> types = const [StructsContactMessagePayload, _$StructsContactMessagePayload];

  @override
  final String wireName = r'StructsContactMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsContactMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'vcard';
    yield serializers.serialize(
      object.vcard,
      specifiedType: const FullType(StructsContactMessagePayloadVcard),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsContactMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsContactMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'vcard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StructsContactMessagePayloadVcard),
          ) as StructsContactMessagePayloadVcard;
          result.vcard.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsContactMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsContactMessagePayloadBuilder();
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

