//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_poll_message_payload.g.dart';

/// StructsPollMessagePayload
///
/// Properties:
/// * [options] 
/// * [selectableOptionsCount] 
/// * [title] 
/// * [to] 
@BuiltValue()
abstract class StructsPollMessagePayload implements Built<StructsPollMessagePayload, StructsPollMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'options')
  BuiltList<String> get options;

  @BuiltValueField(wireName: r'selectable_options_count')
  int get selectableOptionsCount;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructsPollMessagePayload._();

  factory StructsPollMessagePayload([void updates(StructsPollMessagePayloadBuilder b)]) = _$StructsPollMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsPollMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsPollMessagePayload> get serializer => _$StructsPollMessagePayloadSerializer();
}

class _$StructsPollMessagePayloadSerializer implements PrimitiveSerializer<StructsPollMessagePayload> {
  @override
  final Iterable<Type> types = const [StructsPollMessagePayload, _$StructsPollMessagePayload];

  @override
  final String wireName = r'StructsPollMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsPollMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'selectable_options_count';
    yield serializers.serialize(
      object.selectableOptionsCount,
      specifiedType: const FullType(int),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsPollMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsPollMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.options.replace(valueDes);
          break;
        case r'selectable_options_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.selectableOptionsCount = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
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
  StructsPollMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsPollMessagePayloadBuilder();
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

