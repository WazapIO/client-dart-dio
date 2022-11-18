//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_invite_message_payload.g.dart';

/// GroupInviteMessagePayload
///
/// Properties:
/// * [caption] 
/// * [expiryMinutes] 
/// * [inviteCode] 
/// * [to] 
@BuiltValue()
abstract class GroupInviteMessagePayload implements Built<GroupInviteMessagePayload, GroupInviteMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'caption')
  String? get caption;

  @BuiltValueField(wireName: r'expiry_minutes')
  int? get expiryMinutes;

  @BuiltValueField(wireName: r'invite_code')
  String? get inviteCode;

  @BuiltValueField(wireName: r'to')
  String? get to;

  GroupInviteMessagePayload._();

  factory GroupInviteMessagePayload([void updates(GroupInviteMessagePayloadBuilder b)]) = _$GroupInviteMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupInviteMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupInviteMessagePayload> get serializer => _$GroupInviteMessagePayloadSerializer();
}

class _$GroupInviteMessagePayloadSerializer implements PrimitiveSerializer<GroupInviteMessagePayload> {
  @override
  final Iterable<Type> types = const [GroupInviteMessagePayload, _$GroupInviteMessagePayload];

  @override
  final String wireName = r'GroupInviteMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupInviteMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.caption != null) {
      yield r'caption';
      yield serializers.serialize(
        object.caption,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryMinutes != null) {
      yield r'expiry_minutes';
      yield serializers.serialize(
        object.expiryMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.inviteCode != null) {
      yield r'invite_code';
      yield serializers.serialize(
        object.inviteCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupInviteMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupInviteMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'caption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caption = valueDes;
          break;
        case r'expiry_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiryMinutes = valueDes;
          break;
        case r'invite_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inviteCode = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupInviteMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupInviteMessagePayloadBuilder();
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

