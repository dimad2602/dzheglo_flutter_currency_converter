part of 'currency_converter_bloc.dart';

@freezed
class CurrencyConverterState with _$CurrencyConverterState {
  const factory CurrencyConverterState.initial() = _Initial;
  const factory CurrencyConverterState.loading() = _Loading;
  const factory CurrencyConverterState.currency({required RateResponseModel rateModel}) = _Currency;
  const factory CurrencyConverterState.error({
    required String errorMessage,
  }) = _Error;
}
