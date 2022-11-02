//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_group_create_payload.g.dart';

/// StructsGroupCreatePayload
///
/// Properties:
/// * [groupName] 
/// * [participants] 
@BuiltValue()
abstract class StructsGroupCreatePayload implements Built<StructsGroupCreatePayload, StructsGroupCreatePayloadBuilder> {
  @BuiltValueField(wireName: r'group_name')
  String? get groupName;

  @BuiltValueField(wireName: r'participants')
  BuiltList<String>? get participants;

  StructsGroupCreatePayload._();

  factory StructsGroupCreatePayload([void updates(StructsGroupCreatePayloadBuilder b)]) = _$StructsGroupCreatePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsGroupCreatePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsGroupCreatePayload> get serializer => _$StructsGroupCreatePayloadSerializer();
}

class _$StructsGroupCreatePayloadSerializer implements PrimitiveSerializer<StructsGroupCreatePayload> {
  @override
  final Iterable<Type> types = const [StructsGroupCreatePayload, _$StructsGroupCreatePayload];

  @override
  final String wireName = r'StructsGroupCreatePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsGroupCreatePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groupName != null) {
      yield r'group_name';
      yield serializers.serialize(
        object.groupName,
        specifiedType: const FullType(String),
      );
    }
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
    StructsGroupCreatePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsGroupCreatePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupName = valueDes;
          break;
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
  StructsGroupCreatePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsGroupCreatePayloadBuilder();
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

