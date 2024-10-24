
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_model.freezed.dart';

@freezed
class RateModel with _$RateModel{
  const factory RateModel({
    required String currency,
    required Decimal rate,
}) = _RateModel;
}