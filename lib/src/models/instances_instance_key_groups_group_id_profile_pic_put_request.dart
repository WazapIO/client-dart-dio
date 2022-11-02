//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instances_instance_key_groups_group_id_profile_pic_put_request.g.dart';

/// InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest
///
/// Properties:
/// * [file] - Group picture in JPEG
@BuiltValue()
abstract class InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest implements Built<InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest, InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestBuilder> {
  /// Group picture in JPEG
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest._();

  factory InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest([void updates(InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestBuilder b)]) = _$InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest> get serializer => _$InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestSerializer();
}

class _$InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestSerializer implements PrimitiveSerializer<InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest> {
  @override
  final Iterable<Type> types = const [InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest, _$InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest];

  @override
  final String wireName = r'InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest object, {
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
    InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestBuilder result,
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
  InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstancesInstanceKeyGroupsGroupIdProfilePicPutRequestBuilder();
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

