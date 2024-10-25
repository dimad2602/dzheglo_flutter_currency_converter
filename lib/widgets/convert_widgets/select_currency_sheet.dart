import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency_selected/currency_selected_model.dart';
import 'package:dzheglo_flutter_currency_converter/models/rate/rate_model.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/currency_sheet_widgets/currency_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
                  Row(
                    children: [
                      Expanded(
                        child: MyText(
                          text: "Выберите валюту",
                          bold: true,
                          fontWeight: FontWeight.w600,
                          size: 24.h,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          'assets/icons/close_icon.svg',
                          height: 20.h,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: currencies.length,
                      itemBuilder: (context, index) {
                        final currency = currencies[index];
                        return Column(
                          children: [
                            CurrencyCard(
                              currencyCode: currency.code,
                              currencyName: currency.name,
                              countryCode: currency.countryCode,
                              isSelected: currency.code == selectedCurrencyCode,
                              onTap: () {
                                setState(() {
                                  selectedCurrencyCode = currency.code;
                                });
                              },
                            ),
                            const SizedBox(height: 12),
                          ],
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
                      child: Center(
                        child: MyText(
                          text: "Применить",
                          size: 18.h,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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
