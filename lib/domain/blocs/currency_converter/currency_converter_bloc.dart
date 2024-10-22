import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dzheglo_flutter_currency_converter/data/repositories/currency_repo/i_currency.dart';
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
      await event.map(started: (_) => _started(emit));
    });
  }

  FutureOr<void> _started(Emitter<CurrencyConverterState> emit) async {
    emit(const CurrencyConverterState.loading());
    try {
      final currency = await _repository.fetchCurrency();
      emit(const CurrencyConverterState.currency());
    } catch (e) {
      emit(const CurrencyConverterState.error(
          errorMessage: "Fail to fetch news"));
    }
  }
}
