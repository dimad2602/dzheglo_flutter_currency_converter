import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/currency_field.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/select_currency_sheet.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/tab_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCompliteUi extends StatefulWidget {
  final List<RateModel> rateModel;
  final double? convertedAmount;
  const MainCompliteUi(
      {super.key, required this.rateModel, this.convertedAmount});

  @override
  State<MainCompliteUi> createState() => _MainCompliteUiState();
}

class _MainCompliteUiState extends State<MainCompliteUi> {
  int _selectedTabIndex = 0;
  double inputAmount = 0.0;

  List<CurrencyModel> currencies = [
    const CurrencyModel(
        code: 'RUR', name: 'Российский рубль', countryCode: 'ru'),
    const CurrencyModel(code: 'USD', name: 'Доллар США', countryCode: 'us'),
    const CurrencyModel(code: 'EUR', name: 'Евро', countryCode: 'eu'),
    const CurrencyModel(
        code: 'AZN', name: 'Азербайджанский манат', countryCode: 'az'),
    const CurrencyModel(code: 'AMD', name: 'Армянский драм', countryCode: 'am'),
    const CurrencyModel(
        code: 'BYN', name: 'Белорусский рубль', countryCode: 'by'),
    const CurrencyModel(
        code: 'KZT', name: 'Казахстанский тенге', countryCode: 'kz'),
    const CurrencyModel(code: 'KGS', name: 'Киргизский сом', countryCode: 'kg'),
  ];

  late TextEditingController _amountController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(text: inputAmount.toString());
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: TabSwitcher(
            selectedTabIndex: _selectedTabIndex,
            onTabChanged: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
          ),
        ),
        const Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Конвертер валют"),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.alertCardColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.message, color: AppColors.alertIconColor),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Все переводы курсов конвертер осуществляет на основе стоимости валют по данным ЦБ РФ.',
                  ),
                ),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: CurrencyField(
                      labelText: "Хочу обменять:",
                      controller: _amountController,
                      currency: widget.rateModel[0].currency.substring(0, 3),
                      rateInfo:
                          "1 ${widget.rateModel[0].currency.substring(0, 3)} = ${widget.rateModel[0].rate.toStringAsFixed(4)} ${widget.rateModel[1].currency.substring(0, 3)}", // Округленный курс
                      color: AppColors.lightBlueColor,
                      countryCode: 'ru',
                      onCurrencySelected: () {
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                'Обмен возможен только в одну сторону, рубли -> иностранная валюта')));
                      },
                      onAmountChanged: (value) {
                        double? amount = double.tryParse(value);
                        if (amount != null) {
                          final double rate =
                              widget.rateModel[0].rate.toDouble();
                          context.read<CurrencyConverterBloc>().add(
                                CurrencyConverterEvent.convertAmounChanged(
                                  amount: amount,
                                  rate: rate,
                                ),
                              );
                        }
                      },
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: CurrencyField(
                      readOnly: true,
                      labelText: "Вы получите:",
                      amount:
                          "${widget.convertedAmount != null ? widget.convertedAmount!.toStringAsFixed(4) : 0.0}",
                      currency: widget.rateModel[1].currency.substring(0, 3),
                      rateInfo:
                          "1 ${widget.rateModel[1].currency.substring(0, 3)} = ${widget.rateModel[1].rate.toStringAsFixed(4)} ${widget.rateModel[0].currency.substring(0, 3)}",
                      color: AppColors.lightPurpleColor,
                      countryCode: 'us',
                      onCurrencySelected: () {
                        showCurrencyBottomSheet(context, currencies);
                      },
                      onAmountChanged: (value) {
                      },
                    ),
                  ),
                  Positioned(
                    top: 125,
                    left: MediaQuery.of(context).size.width / 2 - 20,
                    child: GestureDetector(
                      onTap: () {
                        context.read<CurrencyConverterBloc>().add(
                              const CurrencyConverterEvent.swapCurrency(),
                            );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.swap_vertical_circle_rounded,
                            size: 40, color: Colors.blue.shade700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Данные за 2023-07-18 15:42:18 GMT+03:00',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }
}
