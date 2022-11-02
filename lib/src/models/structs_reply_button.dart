//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_reply_button.g.dart';

/// StructsReplyButton
///
/// Properties:
/// * [buttonId] 
/// * [buttonText] 
@BuiltValue()
abstract class StructsReplyButton implements Built<StructsReplyButton, StructsReplyButtonBuilder> {
  @BuiltValueField(wireName: r'button_id')
  String? get buttonId;

  @BuiltValueField(wireName: r'button_text')
  String? get buttonText;

  StructsReplyButton._();

  factory StructsReplyButton([void updates(StructsReplyButtonBuilder b)]) = _$StructsReplyButton;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsReplyButtonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsReplyButton> get serializer => _$StructsReplyButtonSerializer();
}

class _$StructsReplyButtonSerializer implements PrimitiveSerializer<StructsReplyButton> {
  @override
  final Iterable<Type> types = const [StructsReplyButton, _$StructsReplyButton];

  @override
  final String wireName = r'StructsReplyButton';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsReplyButton object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buttonId != null) {
      yield r'button_id';
      yield serializers.serialize(
        object.buttonId,
        specifiedType: const FullType(String),
      );
    }
    if (object.buttonText != null) {
      yield r'button_text';
      yield serializers.serialize(
        object.buttonText,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsReplyButton object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsReplyButtonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'button_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buttonId = valueDes;
          break;
        case r'button_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buttonText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructsReplyButton deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsReplyButtonBuilder();
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

