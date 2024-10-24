import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Здесь ваш код для конвертера
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text("Конвертер валют"),
        ),
        // Остальная часть UI
      ],
    );
  }
}

class RatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Здесь код для отображения курсов валют
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text("Курсы валют"),
        ),
        // Остальная часть UI
      ],
    );
  }
}
