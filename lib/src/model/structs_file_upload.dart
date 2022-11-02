//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structs_file_upload.g.dart';

/// StructsFileUpload
///
/// Properties:
/// * [directPath] 
/// * [fileEncSha256] 
/// * [fileLength] 
/// * [fileSha256] 
/// * [mediaKey] 
/// * [mimeType] 
/// * [url] 
@BuiltValue()
abstract class StructsFileUpload implements Built<StructsFileUpload, StructsFileUploadBuilder> {
  @BuiltValueField(wireName: r'direct_path')
  String get directPath;

  @BuiltValueField(wireName: r'file_enc_sha256')
  BuiltList<int> get fileEncSha256;

  @BuiltValueField(wireName: r'file_length')
  int get fileLength;

  @BuiltValueField(wireName: r'file_sha256')
  BuiltList<int> get fileSha256;

  @BuiltValueField(wireName: r'media_key')
  BuiltList<int> get mediaKey;

  @BuiltValueField(wireName: r'mime_type')
  String get mimeType;

  @BuiltValueField(wireName: r'url')
  String get url;

  StructsFileUpload._();

  factory StructsFileUpload([void updates(StructsFileUploadBuilder b)]) = _$StructsFileUpload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructsFileUploadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructsFileUpload> get serializer => _$StructsFileUploadSerializer();
}

class _$StructsFileUploadSerializer implements PrimitiveSerializer<StructsFileUpload> {
  @override
  final Iterable<Type> types = const [StructsFileUpload, _$StructsFileUpload];

  @override
  final String wireName = r'StructsFileUpload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructsFileUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'direct_path';
    yield serializers.serialize(
      object.directPath,
      specifiedType: const FullType(String),
    );
    yield r'file_enc_sha256';
    yield serializers.serialize(
      object.fileEncSha256,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'file_length';
    yield serializers.serialize(
      object.fileLength,
      specifiedType: const FullType(int),
    );
    yield r'file_sha256';
    yield serializers.serialize(
      object.fileSha256,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'media_key';
    yield serializers.serialize(
      object.mediaKey,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'mime_type';
    yield serializers.serialize(
      object.mimeType,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StructsFileUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StructsFileUploadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'direct_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.directPath = valueDes;
          break;
        case r'file_enc_sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.fileEncSha256.replace(valueDes);
          break;
        case r'file_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fileLength = valueDes;
          break;
        case r'file_sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.fileSha256.replace(valueDes);
          break;
        case r'media_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.mediaKey.replace(valueDes);
          break;
        case r'mime_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mimeType = valueDes;
          break;
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
  StructsFileUpload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructsFileUploadBuilder();
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

