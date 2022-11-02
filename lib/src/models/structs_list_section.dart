//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/models/structs_list_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_list_section.g.dart';

/// StructsListSection
///
/// Properties:
/// * [rows] 
/// * [title] 
@BuiltValue()
abstract class StructsListSection implements Built<StructsListSection, StructsListSectionBuilder> {
  @BuiltValueField(wireName: r'rows')
  BuiltList<StructsListItem> get rows;

  @BuiltValueField(wireName: r'title')
  String get title;

  StructsListSection._();

  factory StructsListSection([void updates(StructsListSectionBuilder b)]) = _$StructsListSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsListSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsListSection> get serializer => _$StructsListSectionSerializer();
}

class _$StructsListSectionSerializer implements PrimitiveSerializer<StructsListSection> {
  @override
  final Iterable<Type> types = const [StructsListSection, _$StructsListSection];

  @override
  final String wireName = r'StructsListSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsListSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(StructsListItem)]),
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
    StructsListSection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsListSectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StructsListItem)]),
          ) as BuiltList<StructsListItem>;
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
  StructsListSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsListSectionBuilder();
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

