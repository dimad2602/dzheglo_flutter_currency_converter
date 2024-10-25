import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/pages/main_page/main_complite_ui.dart';
import 'package:dzheglo_flutter_currency_converter/pages/main_page/main_error_ui.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
            child: CircleAvatar(
              backgroundColor: AppColors.appIconColor,
              child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
                  onPressed: () {
                    context
                        .read<CurrencyConverterBloc>()
                        .add(const CurrencyConverterEvent.started());
                  }),
            ),
          ),
          title: const MyText(text: "Конвертер валют онлайн", size: 16, bold: true,),
          backgroundColor: AppColors.appBarColor,
        ),
        body: BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const SizedBox.shrink();
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              currency: (amount, rateModel, currencySelected, convertedAmount) {
                return MainCompliteUi(
                  amount: amount,
                  rateModel: rateModel,
                  convertedAmount: convertedAmount,
                  currencySelected: currencySelected,
                );
              },
              error: (errorMassage) {
                return const ErrorUi();
              },
            );
          },
        ));
  }
}
