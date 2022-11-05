//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_audio_request.g.dart';

/// SendAudioRequest
///
/// Properties:
/// * [file] - Audio file
@BuiltValue()
abstract class SendAudioRequest implements Built<SendAudioRequest, SendAudioRequestBuilder> {
  /// Audio file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  SendAudioRequest._();

  factory SendAudioRequest([void updates(SendAudioRequestBuilder b)]) = _$SendAudioRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendAudioRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendAudioRequest> get serializer => _$SendAudioRequestSerializer();
}

class _$SendAudioRequestSerializer implements PrimitiveSerializer<SendAudioRequest> {
  @override
  final Iterable<Type> types = const [SendAudioRequest, _$SendAudioRequest];

  @override
  final String wireName = r'SendAudioRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendAudioRequest object, {
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
    SendAudioRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendAudioRequestBuilder result,
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
  SendAudioRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendAudioRequestBuilder();
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

