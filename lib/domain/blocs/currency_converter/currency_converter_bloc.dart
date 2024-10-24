import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dzheglo_flutter_currency_converter/data/repositories/currency_repo/i_currency.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_converter_event.dart';
part 'currency_converter_state.dart';
part 'currency_converter_bloc.freezed.dart';

class CurrencyConverterBloc
    extends Bloc<CurrencyConverterEvent, CurrencyConverterState> {
  final ICurrencyRepository _repository;
  CurrencyConverterBloc(this._repository)
      : super(const CurrencyConverterState.initial()) {
    on<CurrencyConverterEvent>((event, emit) async {
      await event.map(
        started: (_) => _started(emit),
        getCurrencyList: (_) => _getCurrencyList(emit),
        convertAmounChanged: (value) => _convertAmounChanged(value, emit),
        swapCurrency: (_) => _swapCurrency(emit),
      );
    });
  }

  FutureOr<void> _started(Emitter<CurrencyConverterState> emit) async {
    emit(const CurrencyConverterState.loading());
    try {
      final rateResponse = await _repository.fetchCurrencyRates();
      final rateModels = rateResponse.data.map((e) => e.toDomain()).toList();
      emit(CurrencyConverterState.currency(rateModel: rateModels));
    } catch (e) {
      emit(const CurrencyConverterState.error(
          errorMessage: "Fail to fetch news"));
    }
  }

  FutureOr<void> _convertAmounChanged(
      _ConvertAmounChanged value, Emitter<CurrencyConverterState> emit) {
    try {
      final rateModel = state.rateModel;
      if (rateModel != null) {
        final convertedAmount = (value.amount * value.rate);
        emit(CurrencyConverterState.currency(
            rateModel: rateModel, convertedAmount: convertedAmount));
      } else {
        emit(const CurrencyConverterState.error(
            errorMessage: "Rate model not available"));
      }
    } catch (e) {
      emit(const CurrencyConverterState.error(
          errorMessage: "Fail to convert currency"));
    }
  }

  FutureOr<void> _swapCurrency(Emitter<CurrencyConverterState> emit) {
    emit(const CurrencyConverterState.error(errorMessage: "error test"));
  }

  //TODO:
  FutureOr<void> _getCurrencyList(Emitter<CurrencyConverterState> emit) async {
    emit(const CurrencyConverterState.loading());
    try {
      //final currency = await _repository.fetchCurrencyList();
      emit(const CurrencyConverterState.error(
          errorMessage: "Fail to fetch news"));
    } catch (e) {
      emit(const CurrencyConverterState.error(
          errorMessage: "Fail to fetch news"));
    }
  }
}
