part of 'currency_converter_bloc.dart';

@freezed
class CurrencyConverterState with _$CurrencyConverterState {
  const CurrencyConverterState._();

  const factory CurrencyConverterState.initial() = _Initial;
  const factory CurrencyConverterState.loading() = _Loading;
  const factory CurrencyConverterState.currency({
    required double amount,
    required List<RateModel> rateModel,
    required CurrencySelectedModel currencySelectedModel,
    double? convertedAmount,
  }) = _Currency;
  const factory CurrencyConverterState.error({
    required String errorMessage,
  }) = _Error;

  List<RateModel>? get rateModel {
    return mapOrNull(
      currency: (value) => value.rateModel,
    );
  }

  CurrencySelectedModel? get currencySelectedModel {
    return mapOrNull(
      currency: (value) => value.currencySelectedModel,
    );
  }
}
