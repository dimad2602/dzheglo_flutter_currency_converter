import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/pages/main_page/main_complite_ui.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0), //TODO:
            child: CircleAvatar(
              backgroundColor: AppColors.appIconColor,
              child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {}),
            ),
          ),
          title: const Text("Конвертер валют онлайн"),
          backgroundColor: AppColors.appBarColor,
        ),
        body: BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const SizedBox.shrink(),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                currency: (_) => const MainCompliteUi(),
                error: (_) => const Center(child: CircularProgressIndicator()));
          },
        ));
  }
}
