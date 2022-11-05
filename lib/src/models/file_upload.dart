//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_upload.g.dart';

/// FileUpload
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
abstract class FileUpload implements Built<FileUpload, FileUploadBuilder> {
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

  FileUpload._();

  factory FileUpload([void updates(FileUploadBuilder b)]) = _$FileUpload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUploadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUpload> get serializer => _$FileUploadSerializer();
}

class _$FileUploadSerializer implements PrimitiveSerializer<FileUpload> {
  @override
  final Iterable<Type> types = const [FileUpload, _$FileUpload];

  @override
  final String wireName = r'FileUpload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUpload object, {
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
    FileUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUploadBuilder result,
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
  FileUpload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUploadBuilder();
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

