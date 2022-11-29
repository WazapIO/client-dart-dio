//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'url_media_upload_payload.g.dart';

/// UrlMediaUploadPayload
///
/// Properties:
/// * [url] 
@BuiltValue()
abstract class UrlMediaUploadPayload implements Built<UrlMediaUploadPayload, UrlMediaUploadPayloadBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  UrlMediaUploadPayload._();

  factory UrlMediaUploadPayload([void updates(UrlMediaUploadPayloadBuilder b)]) = _$UrlMediaUploadPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UrlMediaUploadPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UrlMediaUploadPayload> get serializer => _$UrlMediaUploadPayloadSerializer();
}

class _$UrlMediaUploadPayloadSerializer implements PrimitiveSerializer<UrlMediaUploadPayload> {
  @override
  final Iterable<Type> types = const [UrlMediaUploadPayload, _$UrlMediaUploadPayload];

  @override
  final String wireName = r'UrlMediaUploadPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UrlMediaUploadPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UrlMediaUploadPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UrlMediaUploadPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UrlMediaUploadPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UrlMediaUploadPayloadBuilder();
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

