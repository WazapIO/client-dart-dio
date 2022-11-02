//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_template_button.g.dart';

/// StructsTemplateButton
///
/// Properties:
/// * [buttonId] - Make sure this is unique
/// * [payload] 
/// * [title] 
/// * [type] - Valid types are replyButton, urlButton & callButton
@BuiltValue()
abstract class StructsTemplateButton implements Built<StructsTemplateButton, StructsTemplateButtonBuilder> {
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

  StructsTemplateButton._();

  factory StructsTemplateButton([void updates(StructsTemplateButtonBuilder b)]) = _$StructsTemplateButton;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsTemplateButtonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsTemplateButton> get serializer => _$StructsTemplateButtonSerializer();
}

class _$StructsTemplateButtonSerializer implements PrimitiveSerializer<StructsTemplateButton> {
  @override
  final Iterable<Type> types = const [StructsTemplateButton, _$StructsTemplateButton];

  @override
  final String wireName = r'StructsTemplateButton';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsTemplateButton object, {
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
    StructsTemplateButton object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsTemplateButtonBuilder result,
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
  StructsTemplateButton deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsTemplateButtonBuilder();
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

