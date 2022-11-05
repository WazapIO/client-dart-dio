//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_update_participants_payload.g.dart';

/// GroupUpdateParticipantsPayload
///
/// Properties:
/// * [participants] 
@BuiltValue()
abstract class GroupUpdateParticipantsPayload implements Built<GroupUpdateParticipantsPayload, GroupUpdateParticipantsPayloadBuilder> {
  @BuiltValueField(wireName: r'participants')
  BuiltList<String>? get participants;

  GroupUpdateParticipantsPayload._();

  factory GroupUpdateParticipantsPayload([void updates(GroupUpdateParticipantsPayloadBuilder b)]) = _$GroupUpdateParticipantsPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupUpdateParticipantsPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupUpdateParticipantsPayload> get serializer => _$GroupUpdateParticipantsPayloadSerializer();
}

class _$GroupUpdateParticipantsPayloadSerializer implements PrimitiveSerializer<GroupUpdateParticipantsPayload> {
  @override
  final Iterable<Type> types = const [GroupUpdateParticipantsPayload, _$GroupUpdateParticipantsPayload];

  @override
  final String wireName = r'GroupUpdateParticipantsPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupUpdateParticipantsPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.participants != null) {
      yield r'participants';
      yield serializers.serialize(
        object.participants,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupUpdateParticipantsPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupUpdateParticipantsPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'participants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.participants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupUpdateParticipantsPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupUpdateParticipantsPayloadBuilder();
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

