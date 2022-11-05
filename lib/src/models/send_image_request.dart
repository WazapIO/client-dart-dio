//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_image_request.g.dart';

/// SendImageRequest
///
/// Properties:
/// * [file] - Image file
@BuiltValue()
abstract class SendImageRequest implements Built<SendImageRequest, SendImageRequestBuilder> {
  /// Image file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  SendImageRequest._();

  factory SendImageRequest([void updates(SendImageRequestBuilder b)]) = _$SendImageRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendImageRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendImageRequest> get serializer => _$SendImageRequestSerializer();
}

class _$SendImageRequestSerializer implements PrimitiveSerializer<SendImageRequest> {
  @override
  final Iterable<Type> types = const [SendImageRequest, _$SendImageRequest];

  @override
  final String wireName = r'SendImageRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendImageRequest object, {
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
    SendImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendImageRequestBuilder result,
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
  SendImageRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendImageRequestBuilder();
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

