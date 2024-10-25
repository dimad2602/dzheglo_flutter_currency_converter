import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:dzheglo_flutter_currency_converter/widgets/convert_widgets/tab_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ErrorUi extends StatefulWidget {
  const ErrorUi({super.key});

  @override
  State<ErrorUi> createState() => _ErrorUiState();
}

class _ErrorUiState extends State<ErrorUi> {
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
           Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MyText(text: "Конвертер валют", bold: true, size: 32.h,),
            ),
          ),
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.w),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColors.alertCardPinkGradient,
                  AppColors.alertCardYellowGradient
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/message_icon.svg',
                ),
                const SizedBox(width: 10),
                 Expanded(
                  child: MyText(
                    text: 
                    'Не удалось получить обменные курсы валют. Повторите запрос позже.',
                    maxLines: 10,
                    size: 17.h,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              context
                  .read<CurrencyConverterBloc>()
                  .add(const CurrencyConverterEvent.started());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Скругление кнопок
                  border: Border.all(color: AppColors.buttonRedColor)),
              child:  Center(
                child: Text(
                  "Повторить",
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 24.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
