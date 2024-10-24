import 'package:decimal/decimal.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_dto.freezed.dart';
part 'rate_dto.g.dart';

@freezed
class RateDto with _$RateDto {
  const RateDto._();
  const factory RateDto({
    required String currency,
    required Decimal rate,
  }) = _RateDto;

  RateModel toDomain() => RateModel(currency: currency, rate: rate);

  factory RateDto.fromJson(Map<String, dynamic> json) =>
      _$RateDtoFromJson(json);
}
