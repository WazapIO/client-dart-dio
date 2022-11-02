//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instances_instance_key_send_image_post_request.g.dart';

/// InstancesInstanceKeySendImagePostRequest
///
/// Properties:
/// * [file] - Image file
@BuiltValue()
abstract class InstancesInstanceKeySendImagePostRequest implements Built<InstancesInstanceKeySendImagePostRequest, InstancesInstanceKeySendImagePostRequestBuilder> {
  /// Image file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  InstancesInstanceKeySendImagePostRequest._();

  factory InstancesInstanceKeySendImagePostRequest([void updates(InstancesInstanceKeySendImagePostRequestBuilder b)]) = _$InstancesInstanceKeySendImagePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstancesInstanceKeySendImagePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstancesInstanceKeySendImagePostRequest> get serializer => _$InstancesInstanceKeySendImagePostRequestSerializer();
}

class _$InstancesInstanceKeySendImagePostRequestSerializer implements PrimitiveSerializer<InstancesInstanceKeySendImagePostRequest> {
  @override
  final Iterable<Type> types = const [InstancesInstanceKeySendImagePostRequest, _$InstancesInstanceKeySendImagePostRequest];

  @override
  final String wireName = r'InstancesInstanceKeySendImagePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstancesInstanceKeySendImagePostRequest object, {
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
    InstancesInstanceKeySendImagePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InstancesInstanceKeySendImagePostRequestBuilder result,
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
  InstancesInstanceKeySendImagePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstancesInstanceKeySendImagePostRequestBuilder();
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

