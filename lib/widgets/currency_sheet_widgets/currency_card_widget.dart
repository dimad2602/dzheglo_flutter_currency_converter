import 'package:country_flags/country_flags.dart';
import 'package:dzheglo_flutter_currency_converter/components/text/my_text.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyCode;
  final String currencyName;
  final String countryCode;
  final bool isSelected;
  final VoidCallback onTap;

  const CurrencyCard({
    super.key,
    required this.currencyCode,
    required this.currencyName,
    required this.countryCode,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 374.w,
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        height: 56.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : AppColors.appBarColor,
          borderRadius: BorderRadius.circular(12),
          border:
              isSelected ? Border.all(color: AppColors.buttonRedColor) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CountryFlag.fromCountryCode(
                    width: 30.h,
                    countryCode,
                    shape: const Circle(),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      MyText(
                        maxLines: 2,
                        text: "$currencyCode / ",
                        fontWeight: FontWeight.w600,
                        size: 18.h,
                      ),
                      MyText(
                        maxLines: 2,
                        text: currencyName,
                        size: 18.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isSelected
                ? SvgPicture.asset(
                    'assets/radio/selected_radio.svg',
                    height: 26.h,
                  )
                : SvgPicture.asset(
                    'assets/radio/unselected_radio.svg',
                    height: 26.h,
                  ),
          ],
        ),
      ),
    );
  }
}
