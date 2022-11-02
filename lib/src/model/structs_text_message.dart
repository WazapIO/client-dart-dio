//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_text_message.g.dart';

/// StructsTextMessage
///
/// Properties:
/// * [text] 
/// * [to] 
@BuiltValue()
abstract class StructsTextMessage implements Built<StructsTextMessage, StructsTextMessageBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructsTextMessage._();

  factory StructsTextMessage([void updates(StructsTextMessageBuilder b)]) = _$StructsTextMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsTextMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsTextMessage> get serializer => _$StructsTextMessageSerializer();
}

class _$StructsTextMessageSerializer implements PrimitiveSerializer<StructsTextMessage> {
  @override
  final Iterable<Type> types = const [StructsTextMessage, _$StructsTextMessage];

  @override
  final String wireName = r'StructsTextMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsTextMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
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
    StructsTextMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsTextMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
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
  StructsTextMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsTextMessageBuilder();
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

