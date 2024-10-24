import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MoneyboxPage extends StatelessWidget {
  const MoneyboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColors.alertCardPinkGradient,
                  AppColors.alertCardYellowGradient
                ], // Начальный и конечный цвета
                begin: Alignment.topLeft, // Направление градиента
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12), // Скругленные углы
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline, color: AppColors.alertIconRedColor),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Все переводы курсов конвертер осуществляет на основе стоимости валют по данным ЦБ РФ.',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), // Скругление кнопок
                border: Border.all(color: AppColors.buttonRedColor)
                ),
            child: Center(
              child: Text(
                "Повторить",
                style: TextStyle(
                  color: Colors.black, // Белый текст для выбранной кнопки,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // Скругление кнопок
                color: AppColors.buttonBlueColor // Красная кнопка, если выбрана

                ),
            child: Center(
              child: Text(
                "Применить",
                style: TextStyle(
                  color: Colors.white, // Белый текст для выбранной кнопки,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
