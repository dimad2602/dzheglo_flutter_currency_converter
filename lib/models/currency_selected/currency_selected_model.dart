import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_selected_model.freezed.dart';

@freezed
class CurrencySelectedModel with _$CurrencySelectedModel {
  const factory CurrencySelectedModel({
    required String currencyCode,
  }) = _CurrencySelectedModel;
}
