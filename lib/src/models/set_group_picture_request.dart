//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_group_picture_request.g.dart';

/// SetGroupPictureRequest
///
/// Properties:
/// * [file] - Group picture in JPEG
@BuiltValue()
abstract class SetGroupPictureRequest implements Built<SetGroupPictureRequest, SetGroupPictureRequestBuilder> {
  /// Group picture in JPEG
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  SetGroupPictureRequest._();

  factory SetGroupPictureRequest([void updates(SetGroupPictureRequestBuilder b)]) = _$SetGroupPictureRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetGroupPictureRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetGroupPictureRequest> get serializer => _$SetGroupPictureRequestSerializer();
}

class _$SetGroupPictureRequestSerializer implements PrimitiveSerializer<SetGroupPictureRequest> {
  @override
  final Iterable<Type> types = const [SetGroupPictureRequest, _$SetGroupPictureRequest];

  @override
  final String wireName = r'SetGroupPictureRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetGroupPictureRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(Uint8List),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetGroupPictureRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetGroupPictureRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.file = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetGroupPictureRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetGroupPictureRequestBuilder();
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

