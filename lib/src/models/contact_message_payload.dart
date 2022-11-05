//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/contact_message_payload_vcard.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_message_payload.g.dart';

/// ContactMessagePayload
///
/// Properties:
/// * [to] 
/// * [vcard] 
@BuiltValue()
abstract class ContactMessagePayload implements Built<ContactMessagePayload, ContactMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'vcard')
  ContactMessagePayloadVcard get vcard;

  ContactMessagePayload._();

  factory ContactMessagePayload([void updates(ContactMessagePayloadBuilder b)]) = _$ContactMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactMessagePayload> get serializer => _$ContactMessagePayloadSerializer();
}

class _$ContactMessagePayloadSerializer implements PrimitiveSerializer<ContactMessagePayload> {
  @override
  final Iterable<Type> types = const [ContactMessagePayload, _$ContactMessagePayload];

  @override
  final String wireName = r'ContactMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactMessagePayload object, {
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
      specifiedType: const FullType(ContactMessagePayloadVcard),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactMessagePayloadBuilder result,
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
            specifiedType: const FullType(ContactMessagePayloadVcard),
          ) as ContactMessagePayloadVcard;
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
  ContactMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactMessagePayloadBuilder();
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

