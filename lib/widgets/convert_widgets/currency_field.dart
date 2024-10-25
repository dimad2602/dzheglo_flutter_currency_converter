import 'package:country_flags/country_flags.dart';
import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyField extends StatelessWidget {
  final String labelText;
  final String? amount;
  final TextEditingController? controller;
  final bool readOnly;
  final String currency;
  final String countryCode;
  final String rateInfo;
  final Color color;
  final VoidCallback? onCurrencySelected;
  final ValueChanged<String> onAmountChanged;

  const CurrencyField({
    super.key,
    required this.labelText,
    this.controller,
    required this.currency,
    required this.countryCode,
    required this.rateInfo,
    required this.color,
    this.onCurrencySelected,
    required this.onAmountChanged,
    this.amount,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        height: 139.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 12, top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: labelText,
                size: 18.h,
                color: AppColors.textGreyColor,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50.h,
                    width: 230.w,
                    child: TextField(
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      readOnly: readOnly,
                      controller:
                          controller ?? TextEditingController(text: amount),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 29.h, fontWeight: FontWeight.bold),
                      onChanged: onAmountChanged,
                    ),
                  ),
                  GestureDetector(
                    onTap: onCurrencySelected,
                    child: Container(
                      margin: EdgeInsets.only(right: 18.w),
                      height: 50.h,
                      width: 115.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountryFlag.fromCountryCode(
                            width: 26.h,
                            countryCode,
                            shape: const Circle(),
                          ),
                          const SizedBox(width: 5),
                          Text(currency, style: const TextStyle(fontSize: 20)),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              MyText(
                text: rateInfo,
                color: AppColors.textGreyColor,
                size: 17.h,
                italics: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
