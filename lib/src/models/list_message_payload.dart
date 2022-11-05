//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/models/list_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_message_payload.g.dart';

/// ListMessagePayload
///
/// Properties:
/// * [buttonText] 
/// * [description] 
/// * [multiSelect] 
/// * [sections] 
/// * [text] 
/// * [title] 
/// * [to] 
@BuiltValue()
abstract class ListMessagePayload implements Built<ListMessagePayload, ListMessagePayloadBuilder> {
  @BuiltValueField(wireName: r'button_text')
  String? get buttonText;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'multi_select')
  bool? get multiSelect;

  @BuiltValueField(wireName: r'sections')
  BuiltList<ListSection> get sections;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'to')
  String get to;

  ListMessagePayload._();

  factory ListMessagePayload([void updates(ListMessagePayloadBuilder b)]) = _$ListMessagePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMessagePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMessagePayload> get serializer => _$ListMessagePayloadSerializer();
}

class _$ListMessagePayloadSerializer implements PrimitiveSerializer<ListMessagePayload> {
  @override
  final Iterable<Type> types = const [ListMessagePayload, _$ListMessagePayload];

  @override
  final String wireName = r'ListMessagePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buttonText != null) {
      yield r'button_text';
      yield serializers.serialize(
        object.buttonText,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.multiSelect != null) {
      yield r'multi_select';
      yield serializers.serialize(
        object.multiSelect,
        specifiedType: const FullType(bool),
      );
    }
    yield r'sections';
    yield serializers.serialize(
      object.sections,
      specifiedType: const FullType(BuiltList, [FullType(ListSection)]),
    );
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMessagePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMessagePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'button_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buttonText = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'multi_select':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.multiSelect = valueDes;
          break;
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListSection)]),
          ) as BuiltList<ListSection>;
          result.sections.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
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
  ListMessagePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMessagePayloadBuilder();
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

