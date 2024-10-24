import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required String code,
    required String name,
    required String countryCode,
  }) = _CurrencyModel;
}
