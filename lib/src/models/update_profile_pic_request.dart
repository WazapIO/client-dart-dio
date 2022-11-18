//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_pic_request.g.dart';

/// UpdateProfilePicRequest
///
/// Properties:
/// * [file] - Image file
@BuiltValue()
abstract class UpdateProfilePicRequest implements Built<UpdateProfilePicRequest, UpdateProfilePicRequestBuilder> {
  /// Image file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  UpdateProfilePicRequest._();

  factory UpdateProfilePicRequest([void updates(UpdateProfilePicRequestBuilder b)]) = _$UpdateProfilePicRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfilePicRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfilePicRequest> get serializer => _$UpdateProfilePicRequestSerializer();
}

class _$UpdateProfilePicRequestSerializer implements PrimitiveSerializer<UpdateProfilePicRequest> {
  @override
  final Iterable<Type> types = const [UpdateProfilePicRequest, _$UpdateProfilePicRequest];

  @override
  final String wireName = r'UpdateProfilePicRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfilePicRequest object, {
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
    UpdateProfilePicRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfilePicRequestBuilder result,
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
  UpdateProfilePicRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfilePicRequestBuilder();
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

