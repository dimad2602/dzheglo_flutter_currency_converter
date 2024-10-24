import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TabSwitcher extends StatelessWidget {
  final int selectedTabIndex;
  final ValueChanged<int> onTabChanged;

  const TabSwitcher({
    super.key,
    required this.selectedTabIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildTabButton(context, "Конвертер", 0),
          _buildTabButton(context, "Курсы валют", 1),
        ],
      ),
    );
  }

  Widget _buildTabButton(BuildContext context, String title, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTabChanged(index); // Обработка нажатия на кнопку
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: selectedTabIndex == index
                ? AppColors.buttonRedColor
                : Colors.white,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: selectedTabIndex == index
                    ? Colors.white
                    : AppColors.textGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
