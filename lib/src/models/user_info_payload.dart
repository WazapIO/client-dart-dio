//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_payload.g.dart';

/// UserInfoPayload
///
/// Properties:
/// * [userIds] 
@BuiltValue()
abstract class UserInfoPayload implements Built<UserInfoPayload, UserInfoPayloadBuilder> {
  @BuiltValueField(wireName: r'user_ids')
  BuiltList<String> get userIds;

  UserInfoPayload._();

  factory UserInfoPayload([void updates(UserInfoPayloadBuilder b)]) = _$UserInfoPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoPayload> get serializer => _$UserInfoPayloadSerializer();
}

class _$UserInfoPayloadSerializer implements PrimitiveSerializer<UserInfoPayload> {
  @override
  final Iterable<Type> types = const [UserInfoPayload, _$UserInfoPayload];

  @override
  final String wireName = r'UserInfoPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoPayload object, {
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
    UserInfoPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfoPayloadBuilder result,
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
  UserInfoPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoPayloadBuilder();
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

