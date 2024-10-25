import 'package:country_flags/country_flags.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency_selected/currency_selected_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showCurrencyBottomSheet(
    {required BuildContext context,
    required List<CurrencyModel> currencies,
    required String selectedCurrencyCode,
    required double amount,
    required List<RateModel> rateModel}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
        builder: (context, state) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height * 0.8,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(state.rateModel.toString()),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Выберите валюту",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: currencies.length,
                      itemBuilder: (context, index) {
                        final currency = currencies[index];
                        return ListTile(
                          leading: CountryFlag.fromCountryCode(
                            currency.countryCode,
                            shape: const Circle(),
                          ),
                          title: Text('${currency.code} / ${currency.name}'),
                          trailing: Radio(
                            value: currency.code,
                            groupValue: selectedCurrencyCode,
                            onChanged: (value) {
                              setState(() {
                                selectedCurrencyCode = value.toString();
                              });
                            },
                          ),
                          onTap: () {
                            setState(() {
                              selectedCurrencyCode = currency.code;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      context.read<CurrencyConverterBloc>().add(
                          CurrencyConverterEvent.changeCurrency(
                              currencySelected: CurrencySelectedModel(
                                  currencyCode: selectedCurrencyCode),
                              amount: amount));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.buttonBlueColor),
                      child: const Center(
                        child: Text(
                          "Применить",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        },
      );
    },
  );
}
