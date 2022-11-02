//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instances_instance_key_send_document_post_request.g.dart';

/// InstancesInstanceKeySendDocumentPostRequest
///
/// Properties:
/// * [file] - Document file
@BuiltValue()
abstract class InstancesInstanceKeySendDocumentPostRequest implements Built<InstancesInstanceKeySendDocumentPostRequest, InstancesInstanceKeySendDocumentPostRequestBuilder> {
  /// Document file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  InstancesInstanceKeySendDocumentPostRequest._();

  factory InstancesInstanceKeySendDocumentPostRequest([void updates(InstancesInstanceKeySendDocumentPostRequestBuilder b)]) = _$InstancesInstanceKeySendDocumentPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstancesInstanceKeySendDocumentPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstancesInstanceKeySendDocumentPostRequest> get serializer => _$InstancesInstanceKeySendDocumentPostRequestSerializer();
}

class _$InstancesInstanceKeySendDocumentPostRequestSerializer implements PrimitiveSerializer<InstancesInstanceKeySendDocumentPostRequest> {
  @override
  final Iterable<Type> types = const [InstancesInstanceKeySendDocumentPostRequest, _$InstancesInstanceKeySendDocumentPostRequest];

  @override
  final String wireName = r'InstancesInstanceKeySendDocumentPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstancesInstanceKeySendDocumentPostRequest object, {
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
    InstancesInstanceKeySendDocumentPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InstancesInstanceKeySendDocumentPostRequestBuilder result,
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
  InstancesInstanceKeySendDocumentPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstancesInstanceKeySendDocumentPostRequestBuilder();
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

