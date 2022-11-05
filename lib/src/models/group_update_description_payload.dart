//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_update_description_payload.g.dart';

/// GroupUpdateDescriptionPayload
///
/// Properties:
/// * [description] 
@BuiltValue()
abstract class GroupUpdateDescriptionPayload implements Built<GroupUpdateDescriptionPayload, GroupUpdateDescriptionPayloadBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  GroupUpdateDescriptionPayload._();

  factory GroupUpdateDescriptionPayload([void updates(GroupUpdateDescriptionPayloadBuilder b)]) = _$GroupUpdateDescriptionPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupUpdateDescriptionPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupUpdateDescriptionPayload> get serializer => _$GroupUpdateDescriptionPayloadSerializer();
}

class _$GroupUpdateDescriptionPayloadSerializer implements PrimitiveSerializer<GroupUpdateDescriptionPayload> {
  @override
  final Iterable<Type> types = const [GroupUpdateDescriptionPayload, _$GroupUpdateDescriptionPayload];

  @override
  final String wireName = r'GroupUpdateDescriptionPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupUpdateDescriptionPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupUpdateDescriptionPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupUpdateDescriptionPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupUpdateDescriptionPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupUpdateDescriptionPayloadBuilder();
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

