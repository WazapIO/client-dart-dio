//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_document_request.g.dart';

/// SendDocumentRequest
///
/// Properties:
/// * [file] - Document file
@BuiltValue()
abstract class SendDocumentRequest implements Built<SendDocumentRequest, SendDocumentRequestBuilder> {
  /// Document file
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  SendDocumentRequest._();

  factory SendDocumentRequest([void updates(SendDocumentRequestBuilder b)]) = _$SendDocumentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendDocumentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendDocumentRequest> get serializer => _$SendDocumentRequestSerializer();
}

class _$SendDocumentRequestSerializer implements PrimitiveSerializer<SendDocumentRequest> {
  @override
  final Iterable<Type> types = const [SendDocumentRequest, _$SendDocumentRequest];

  @override
  final String wireName = r'SendDocumentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendDocumentRequest object, {
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
    SendDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendDocumentRequestBuilder result,
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
  SendDocumentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendDocumentRequestBuilder();
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

