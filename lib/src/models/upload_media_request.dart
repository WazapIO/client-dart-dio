//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_media_request.g.dart';

/// UploadMediaRequest
///
/// Properties:
/// * [file] - Media file
@BuiltValue()
abstract class UploadMediaRequest implements Built<UploadMediaRequest, UploadMediaRequestBuilder> {
  /// Media file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  UploadMediaRequest._();

  factory UploadMediaRequest([void updates(UploadMediaRequestBuilder b)]) = _$UploadMediaRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UploadMediaRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UploadMediaRequest> get serializer => _$UploadMediaRequestSerializer();
}

class _$UploadMediaRequestSerializer implements PrimitiveSerializer<UploadMediaRequest> {
  @override
  final Iterable<Type> types = const [UploadMediaRequest, _$UploadMediaRequest];

  @override
  final String wireName = r'UploadMediaRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UploadMediaRequest object, {
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
    UploadMediaRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadMediaRequestBuilder result,
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
  UploadMediaRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadMediaRequestBuilder();
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

