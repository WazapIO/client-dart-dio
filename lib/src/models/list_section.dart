//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/list_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_section.g.dart';

/// ListSection
///
/// Properties:
/// * [rows] 
/// * [title] 
@BuiltValue()
abstract class ListSection implements Built<ListSection, ListSectionBuilder> {
  @BuiltValueField(wireName: r'rows')
  BuiltList<ListItem> get rows;

  @BuiltValueField(wireName: r'title')
  String get title;

  ListSection._();

  factory ListSection([void updates(ListSectionBuilder b)]) = _$ListSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListSection> get serializer => _$ListSectionSerializer();
}

class _$ListSectionSerializer implements PrimitiveSerializer<ListSection> {
  @override
  final Iterable<Type> types = const [ListSection, _$ListSection];

  @override
  final String wireName = r'ListSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(ListItem)]),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListSection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListSectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListItem)]),
          ) as BuiltList<ListItem>;
          result.rows.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSectionBuilder();
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

