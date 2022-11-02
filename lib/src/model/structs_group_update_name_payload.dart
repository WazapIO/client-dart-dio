//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_group_update_name_payload.g.dart';

/// StructsGroupUpdateNamePayload
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class StructsGroupUpdateNamePayload implements Built<StructsGroupUpdateNamePayload, StructsGroupUpdateNamePayloadBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  StructsGroupUpdateNamePayload._();

  factory StructsGroupUpdateNamePayload([void updates(StructsGroupUpdateNamePayloadBuilder b)]) = _$StructsGroupUpdateNamePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsGroupUpdateNamePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsGroupUpdateNamePayload> get serializer => _$StructsGroupUpdateNamePayloadSerializer();
}

class _$StructsGroupUpdateNamePayloadSerializer implements PrimitiveSerializer<StructsGroupUpdateNamePayload> {
  @override
  final Iterable<Type> types = const [StructsGroupUpdateNamePayload, _$StructsGroupUpdateNamePayload];

  @override
  final String wireName = r'StructsGroupUpdateNamePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsGroupUpdateNamePayload object, {
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
    StructsGroupUpdateNamePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsGroupUpdateNamePayloadBuilder result,
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
  StructsGroupUpdateNamePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsGroupUpdateNamePayloadBuilder();
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

