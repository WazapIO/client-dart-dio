//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_list_item.g.dart';

/// StructsListItem
///
/// Properties:
/// * [description] 
/// * [rowId] 
/// * [title] 
@BuiltValue()
abstract class StructsListItem implements Built<StructsListItem, StructsListItemBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'row_id')
  String? get rowId;

  @BuiltValueField(wireName: r'title')
  String get title;

  StructsListItem._();

  factory StructsListItem([void updates(StructsListItemBuilder b)]) = _$StructsListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsListItem> get serializer => _$StructsListItemSerializer();
}

class _$StructsListItemSerializer implements PrimitiveSerializer<StructsListItem> {
  @override
  final Iterable<Type> types = const [StructsListItem, _$StructsListItem];

  @override
  final String wireName = r'StructsListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowId != null) {
      yield r'row_id';
      yield serializers.serialize(
        object.rowId,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsListItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'row_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowId = valueDes;
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
  StructsListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsListItemBuilder();
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

