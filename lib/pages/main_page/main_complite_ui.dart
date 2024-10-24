import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/currency_field.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/select_currency.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/tab_switcher.dart';
import 'package:flutter/material.dart';

class MainCompliteUi extends StatefulWidget {
  const MainCompliteUi({super.key});

  @override
  State<MainCompliteUi> createState() => _MainCompliteUiState();
}

class _MainCompliteUiState extends State<MainCompliteUi> {
  int _selectedTabIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabSwitcher(
          selectedTabIndex: _selectedTabIndex,
          onTabChanged: (index) {
            setState(() {
              _selectedTabIndex = index;
            });
          },
        ),

        const Align(
            alignment: AlignmentDirectional.topStart,
            child: Text("Конвертер валют")),
        // Контейнер с информационным сообщением
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
            Container(
              height: 300, // Задаем фиксированную высоту для Stack
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: CurrencyField(
                      labelText: "Хочу обменять:",
                      amount: "5000",
                      currency: "RUR",
                      rateInfo: "1 RUR = 90.4217 USD",
                      color: AppColors.lightBlueColor,
                      countryCode: 'ru',
                      onCurrencySelected: () {
                        showCurrencyBottomSheet(context, currencies);
                      },
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: CurrencyField(
                      labelText: "Вы получите:",
                      amount: "55.2965",
                      currency: "USD",
                      rateInfo: "1 USD = 0.0111 RUR",
                      color: AppColors.lightPurpleColor,
                      countryCode: 'us',
                      onCurrencySelected: () {
                        showCurrencyBottomSheet(context, currencies);
                      },
                    ),
                  ),
                  Positioned(
                    top: 125,
                    left: MediaQuery.of(context).size.width / 2 -
                        20, // Центруем иконку
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.swap_vertical_circle_rounded,
                          size: 40, color: Colors.blue.shade700),
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
