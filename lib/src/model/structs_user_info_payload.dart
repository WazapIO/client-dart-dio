//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_user_info_payload.g.dart';

/// StructsUserInfoPayload
///
/// Properties:
/// * [userIds] 
@BuiltValue()
abstract class StructsUserInfoPayload implements Built<StructsUserInfoPayload, StructsUserInfoPayloadBuilder> {
  @BuiltValueField(wireName: r'user_ids')
  BuiltList<String> get userIds;

  StructsUserInfoPayload._();

  factory StructsUserInfoPayload([void updates(StructsUserInfoPayloadBuilder b)]) = _$StructsUserInfoPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsUserInfoPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsUserInfoPayload> get serializer => _$StructsUserInfoPayloadSerializer();
}

class _$StructsUserInfoPayloadSerializer implements PrimitiveSerializer<StructsUserInfoPayload> {
  @override
  final Iterable<Type> types = const [StructsUserInfoPayload, _$StructsUserInfoPayload];

  @override
  final String wireName = r'StructsUserInfoPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsUserInfoPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_ids';
    yield serializers.serialize(
      object.userIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsUserInfoPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsUserInfoPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.userIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsUserInfoPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsUserInfoPayloadBuilder();
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

