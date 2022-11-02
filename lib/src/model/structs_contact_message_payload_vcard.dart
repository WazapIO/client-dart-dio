//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_contact_message_payload_vcard.g.dart';

/// StructsContactMessagePayloadVcard
///
/// Properties:
/// * [fullName] 
/// * [organization] 
/// * [phone] 
@BuiltValue()
abstract class StructsContactMessagePayloadVcard implements Built<StructsContactMessagePayloadVcard, StructsContactMessagePayloadVcardBuilder> {
  @BuiltValueField(wireName: r'full_name')
  String? get fullName;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  StructsContactMessagePayloadVcard._();

  factory StructsContactMessagePayloadVcard([void updates(StructsContactMessagePayloadVcardBuilder b)]) = _$StructsContactMessagePayloadVcard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsContactMessagePayloadVcardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsContactMessagePayloadVcard> get serializer => _$StructsContactMessagePayloadVcardSerializer();
}

class _$StructsContactMessagePayloadVcardSerializer implements PrimitiveSerializer<StructsContactMessagePayloadVcard> {
  @override
  final Iterable<Type> types = const [StructsContactMessagePayloadVcard, _$StructsContactMessagePayloadVcard];

  @override
  final String wireName = r'StructsContactMessagePayloadVcard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsContactMessagePayloadVcard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fullName != null) {
      yield r'full_name';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsContactMessagePayloadVcard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsContactMessagePayloadVcardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.organization = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsContactMessagePayloadVcard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsContactMessagePayloadVcardBuilder();
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

