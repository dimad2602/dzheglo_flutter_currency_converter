// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateDtoImpl _$$RateDtoImplFromJson(Map<String, dynamic> json) =>
    _$RateDtoImpl(
      currency: json['currency'] as String,
      rate: Decimal.fromJson(json['rate'] as String),
    );

Map<String, dynamic> _$$RateDtoImplToJson(_$RateDtoImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'rate': instance.rate,
    };
