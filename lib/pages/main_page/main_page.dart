import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const Text("initial"),
                loading: (_) => const Text("loading"),
                currency: (_) => const Text("currency"),
                error: (_) => const Text("error"));
          },
        ),
      ),
    );
  }
}
