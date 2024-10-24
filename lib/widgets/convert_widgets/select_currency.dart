import 'package:country_flags/country_flags.dart';
import 'package:dzheglo_flutter_currency_converter/models/currency/currency_model.dart';
import 'package:flutter/material.dart';

void showCurrencyBottomSheet(
    BuildContext context, List<CurrencyModel> currencies) {
  String selectedCurrencyCode = 'RUR';
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
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
                  child: Text(
                    "Выберите валюту",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: currencies.length,
                itemBuilder: (context, index) {
                  final currency = currencies[index];
                  print(currency.countryCode);
                  return ListTile(
                    leading: CountryFlag.fromCountryCode(
                      currency.countryCode,
                      shape: const Circle(),
                    ),
                    title: Text('${currency.code} / ${currency.name}'),
                    trailing: Radio(
                      value: currency.code,
                      groupValue:
                          selectedCurrencyCode, // Текущая выбранная валюта
                      onChanged: (value) {
                        // setState(() {
                        //   selectedCurrencyCode = value.toString();
                        // });
                      },
                    ),
                    onTap: () {
                      // setState(() {
                      //   selectedCurrencyCode = currency.code;
                      // });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Логика для применения выбранной валюты
                Navigator.pop(context);
              },
              child: Text("Применить"),
            ),
          ],
        ),
      );
    },
  );
}
