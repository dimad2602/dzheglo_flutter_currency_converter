import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency_selected/currency_selected_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/currency_field.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/select_currency_sheet.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/tab_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainCompliteUi extends StatefulWidget {
  final double amount;
  final List<RateModel> rateModel;
  final double? convertedAmount;
  final CurrencySelectedModel currencySelected;
  const MainCompliteUi(
      {super.key,
      required this.rateModel,
      this.convertedAmount,
      required this.currencySelected,
      required this.amount});

  @override
  State<MainCompliteUi> createState() => _MainCompliteUiState();
}

class _MainCompliteUiState extends State<MainCompliteUi> {
  int _selectedTabIndex = 0;

  List<CurrencyModel> currencies = [
    // const CurrencyModel(
    //     code: 'RUR', name: 'Российский рубль', countryCode: 'ru'),
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
    _amountController = TextEditingController(text: widget.amount.toString());
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  String? getCountryCodeByCurrencyCode(String currencyCode) {
    final currency = currencies.firstWhere(
      (c) => c.code == currencyCode,
      orElse: () => const CurrencyModel(code: '', name: '', countryCode: ''),
    );
    return currency.countryCode.isNotEmpty ? currency.countryCode : null;
  }

  @override
  Widget build(BuildContext context) {
    final currencyFromCode = widget.rateModel[0].currency.substring(0, 3);
    final currencyToCode = widget.rateModel[1].currency.substring(0, 3);

    final fromCountryCode =
        getCountryCodeByCurrencyCode(currencyFromCode) ?? 'ru';
    final toCountryCode = getCountryCodeByCurrencyCode(currencyToCode) ?? 'us';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.w),
                child: TabSwitcher(
                  selectedTabIndex: _selectedTabIndex,
                  onTabChanged: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                ),
              ),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: MyText(
                      text: "Конвертер валют",
                      size: 32.h,
                      bold: true,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                child: Container(
                  height: 85.h,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.alertCardColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/message_icon.svg',
                        colorFilter: const ColorFilter.mode(
                          AppColors.alertIconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: MyText(
                          text:
                              'Все переводы курсов конвертер осуществляет на основе стоимости валют по данным ЦБ РФ.',
                          size: 15.h,
                          maxLines: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 382.h,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: CurrencyField(
                            labelText: "Хочу обменять:",
                            controller: _amountController,
                            currency: currencyFromCode,
                            rateInfo:
                                "1 $currencyFromCode = ${widget.rateModel[0].rate.toStringAsFixed(4)} $currencyToCode",
                            color: AppColors.lightBlueColor,
                            countryCode: fromCountryCode,
                            onCurrencySelected: () {
                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      content: Text(
                                'Обмен возможен только в одну сторону, рубли -> иностранная валюта',
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 16),
                              )));
                            },
                            onAmountChanged: (value) {
                              double? amount = double.tryParse(value);
                              if (amount != null) {
                                final double rate =
                                    widget.rateModel[0].rate.toDouble();
                                context.read<CurrencyConverterBloc>().add(
                                      CurrencyConverterEvent
                                          .convertAmounChanged(
                                        amount: amount,
                                        rate: rate,
                                      ),
                                    );
                              }
                            },
                          ),
                        ),
                        Positioned(
                          top: 150.h,
                          left: 0,
                          right: 0,
                          child: CurrencyField(
                            readOnly: true,
                            labelText: "Вы получите:",
                            amount:
                                "${widget.convertedAmount != null ? widget.convertedAmount!.toStringAsFixed(4) : 0.0}",
                            currency: currencyToCode,
                            rateInfo:
                                "1 $currencyToCode = ${widget.rateModel[1].rate.toStringAsFixed(4)} $currencyFromCode",
                            color: AppColors.lightPurpleColor,
                            countryCode:
                                toCountryCode, // Используем найденный код страны
                            onCurrencySelected: () {
                              showCurrencyBottomSheet(
                                  context: context,
                                  currencies: currencies,
                                  selectedCurrencyCode:
                                      widget.currencySelected.currencyCode,
                                  amount: widget.amount,
                                  rateModel: widget.rateModel);
                            },
                            onAmountChanged: (value) {},
                          ),
                        ),
                        Positioned(
                          top: 125.h,
                          left: MediaQuery.of(context).size.width / 2 - 20,
                          child: GestureDetector(
                            onTap: () {
                              context.read<CurrencyConverterBloc>().add(
                                    const CurrencyConverterEvent.swapCurrency(),
                                  );
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.swap_vertical_circle_rounded,
                                  size: 50, color: AppColors.buttonBlueColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ))),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: MyText(
              text:
              'Данные за 2023-07-18 15:42:18 GMT+03:00',
              maxLines: 4,
              color: AppColors.textGreyColor,
              size: 19.h,
            ),
          ),
        ],
      ),
    );
  }
}
