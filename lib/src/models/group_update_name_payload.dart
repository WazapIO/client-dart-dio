//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_update_name_payload.g.dart';

/// GroupUpdateNamePayload
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class GroupUpdateNamePayload implements Built<GroupUpdateNamePayload, GroupUpdateNamePayloadBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  GroupUpdateNamePayload._();

  factory GroupUpdateNamePayload([void updates(GroupUpdateNamePayloadBuilder b)]) = _$GroupUpdateNamePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupUpdateNamePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupUpdateNamePayload> get serializer => _$GroupUpdateNamePayloadSerializer();
}

class _$GroupUpdateNamePayloadSerializer implements PrimitiveSerializer<GroupUpdateNamePayload> {
  @override
  final Iterable<Type> types = const [GroupUpdateNamePayload, _$GroupUpdateNamePayload];

  @override
  final String wireName = r'GroupUpdateNamePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupUpdateNamePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupUpdateNamePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupUpdateNamePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  GroupUpdateNamePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupUpdateNamePayloadBuilder();
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

