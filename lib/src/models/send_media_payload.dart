//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/models/file_upload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_media_payload.g.dart';

/// SendMediaPayload
///
/// Properties:
/// * [caption] 
/// * [filename] 
/// * [mediaData] 
/// * [mediaType] 
/// * [to] 
@BuiltValue()
abstract class SendMediaPayload implements Built<SendMediaPayload, SendMediaPayloadBuilder> {
  @BuiltValueField(wireName: r'caption')
  String? get caption;

  @BuiltValueField(wireName: r'filename')
  String? get filename;

  @BuiltValueField(wireName: r'media_data')
  FileUpload get mediaData;

  @BuiltValueField(wireName: r'media_type')
  String get mediaType;

  @BuiltValueField(wireName: r'to')
  String get to;

  SendMediaPayload._();

  factory SendMediaPayload([void updates(SendMediaPayloadBuilder b)]) = _$SendMediaPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendMediaPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendMediaPayload> get serializer => _$SendMediaPayloadSerializer();
}

class _$SendMediaPayloadSerializer implements PrimitiveSerializer<SendMediaPayload> {
  @override
  final Iterable<Type> types = const [SendMediaPayload, _$SendMediaPayload];

  @override
  final String wireName = r'SendMediaPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.caption != null) {
      yield r'caption';
      yield serializers.serialize(
        object.caption,
        specifiedType: const FullType(String),
      );
    }
    if (object.filename != null) {
      yield r'filename';
      yield serializers.serialize(
        object.filename,
        specifiedType: const FullType(String),
      );
    }
    yield r'media_data';
    yield serializers.serialize(
      object.mediaData,
      specifiedType: const FullType(FileUpload),
    );
    yield r'media_type';
    yield serializers.serialize(
      object.mediaType,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SendMediaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendMediaPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'caption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caption = valueDes;
          break;
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'media_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileUpload),
          ) as FileUpload;
          result.mediaData.replace(valueDes);
          break;
        case r'media_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mediaType = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendMediaPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendMediaPayloadBuilder();
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

