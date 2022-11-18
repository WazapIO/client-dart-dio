//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_request_payload.g.dart';

/// PaymentRequestPayload
///
/// Properties:
/// * [amount] 
/// * [currency] 
/// * [expiryMinutes] 
/// * [to] 
@BuiltValue()
abstract class PaymentRequestPayload implements Built<PaymentRequestPayload, PaymentRequestPayloadBuilder> {
  @BuiltValueField(wireName: r'amount')
  int? get amount;

  @BuiltValueField(wireName: r'currency')
  String? get currency;

  @BuiltValueField(wireName: r'expiry_minutes')
  int? get expiryMinutes;

  @BuiltValueField(wireName: r'to')
  String? get to;

  PaymentRequestPayload._();

  factory PaymentRequestPayload([void updates(PaymentRequestPayloadBuilder b)]) = _$PaymentRequestPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentRequestPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentRequestPayload> get serializer => _$PaymentRequestPayloadSerializer();
}

class _$PaymentRequestPayloadSerializer implements PrimitiveSerializer<PaymentRequestPayload> {
  @override
  final Iterable<Type> types = const [PaymentRequestPayload, _$PaymentRequestPayload];

  @override
  final String wireName = r'PaymentRequestPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(int),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryMinutes != null) {
      yield r'expiry_minutes';
      yield serializers.serialize(
        object.expiryMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentRequestPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'expiry_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiryMinutes = valueDes;
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
  PaymentRequestPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentRequestPayloadBuilder();
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

