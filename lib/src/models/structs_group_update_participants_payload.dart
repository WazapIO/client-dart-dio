//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_group_update_participants_payload.g.dart';

/// StructsGroupUpdateParticipantsPayload
///
/// Properties:
/// * [participants] 
@BuiltValue()
abstract class StructsGroupUpdateParticipantsPayload implements Built<StructsGroupUpdateParticipantsPayload, StructsGroupUpdateParticipantsPayloadBuilder> {
  @BuiltValueField(wireName: r'participants')
  BuiltList<String>? get participants;

  StructsGroupUpdateParticipantsPayload._();

  factory StructsGroupUpdateParticipantsPayload([void updates(StructsGroupUpdateParticipantsPayloadBuilder b)]) = _$StructsGroupUpdateParticipantsPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsGroupUpdateParticipantsPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsGroupUpdateParticipantsPayload> get serializer => _$StructsGroupUpdateParticipantsPayloadSerializer();
}

class _$StructsGroupUpdateParticipantsPayloadSerializer implements PrimitiveSerializer<StructsGroupUpdateParticipantsPayload> {
  @override
  final Iterable<Type> types = const [StructsGroupUpdateParticipantsPayload, _$StructsGroupUpdateParticipantsPayload];

  @override
  final String wireName = r'StructsGroupUpdateParticipantsPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsGroupUpdateParticipantsPayload object, {
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
    StructsGroupUpdateParticipantsPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsGroupUpdateParticipantsPayloadBuilder result,
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
  StructsGroupUpdateParticipantsPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsGroupUpdateParticipantsPayloadBuilder();
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

