part of 'currency_converter_bloc.dart';

@freezed
class CurrencyConverterEvent with _$CurrencyConverterEvent {
  const factory CurrencyConverterEvent.started() = _Started;
  const factory CurrencyConverterEvent.getCurrencyList() = _GetCurrencyList;
}