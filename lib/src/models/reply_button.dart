//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reply_button.g.dart';

/// ReplyButton
///
/// Properties:
/// * [buttonId] 
/// * [buttonText] 
@BuiltValue()
abstract class ReplyButton implements Built<ReplyButton, ReplyButtonBuilder> {
  @BuiltValueField(wireName: r'button_id')
  String? get buttonId;

  @BuiltValueField(wireName: r'button_text')
  String? get buttonText;

  ReplyButton._();

  factory ReplyButton([void updates(ReplyButtonBuilder b)]) = _$ReplyButton;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplyButtonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplyButton> get serializer => _$ReplyButtonSerializer();
}

class _$ReplyButtonSerializer implements PrimitiveSerializer<ReplyButton> {
  @override
  final Iterable<Type> types = const [ReplyButton, _$ReplyButton];

  @override
  final String wireName = r'ReplyButton';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplyButton object, {
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
    ReplyButton object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReplyButtonBuilder result,
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
  ReplyButton deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplyButtonBuilder();
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

