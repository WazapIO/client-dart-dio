//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instances_instance_key_send_audio_post_request.g.dart';

/// InstancesInstanceKeySendAudioPostRequest
///
/// Properties:
/// * [file] - Audio file
@BuiltValue()
abstract class InstancesInstanceKeySendAudioPostRequest implements Built<InstancesInstanceKeySendAudioPostRequest, InstancesInstanceKeySendAudioPostRequestBuilder> {
  /// Audio file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  InstancesInstanceKeySendAudioPostRequest._();

  factory InstancesInstanceKeySendAudioPostRequest([void updates(InstancesInstanceKeySendAudioPostRequestBuilder b)]) = _$InstancesInstanceKeySendAudioPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstancesInstanceKeySendAudioPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstancesInstanceKeySendAudioPostRequest> get serializer => _$InstancesInstanceKeySendAudioPostRequestSerializer();
}

class _$InstancesInstanceKeySendAudioPostRequestSerializer implements PrimitiveSerializer<InstancesInstanceKeySendAudioPostRequest> {
  @override
  final Iterable<Type> types = const [InstancesInstanceKeySendAudioPostRequest, _$InstancesInstanceKeySendAudioPostRequest];

  @override
  final String wireName = r'InstancesInstanceKeySendAudioPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstancesInstanceKeySendAudioPostRequest object, {
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
    InstancesInstanceKeySendAudioPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InstancesInstanceKeySendAudioPostRequestBuilder result,
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
  InstancesInstanceKeySendAudioPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstancesInstanceKeySendAudioPostRequestBuilder();
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

