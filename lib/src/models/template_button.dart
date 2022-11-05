//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_button.g.dart';

/// TemplateButton
///
/// Properties:
/// * [buttonId] - Make sure this is unique
/// * [payload] 
/// * [title] 
/// * [type] - Valid types are replyButton, urlButton & callButton
@BuiltValue()
abstract class TemplateButton implements Built<TemplateButton, TemplateButtonBuilder> {
  /// Make sure this is unique
  @BuiltValueField(wireName: r'button_id')
  String? get buttonId;

  @BuiltValueField(wireName: r'payload')
  String? get payload;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Valid types are replyButton, urlButton & callButton
  @BuiltValueField(wireName: r'type')
  String get type;

  TemplateButton._();

  factory TemplateButton([void updates(TemplateButtonBuilder b)]) = _$TemplateButton;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateButtonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateButton> get serializer => _$TemplateButtonSerializer();
}

class _$TemplateButtonSerializer implements PrimitiveSerializer<TemplateButton> {
  @override
  final Iterable<Type> types = const [TemplateButton, _$TemplateButton];

  @override
  final String wireName = r'TemplateButton';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateButton object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buttonId != null) {
      yield r'button_id';
      yield serializers.serialize(
        object.buttonId,
        specifiedType: const FullType(String),
      );
    }
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateButton object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateButtonBuilder result,
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
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payload = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateButton deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateButtonBuilder();
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

