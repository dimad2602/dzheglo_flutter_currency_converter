import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class CurrencyField extends StatelessWidget {
  final String labelText;
  final String amount;
  final String currency;
  final String countryCode;
  final String rateInfo;
  final Color color;
  final VoidCallback onCurrencySelected;

  const CurrencyField({
    super.key,
    required this.labelText,
    required this.amount,
    required this.currency,
    required this.countryCode,
    required this.rateInfo,
    required this.color,
    required this.onCurrencySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(labelText, style: const TextStyle(fontSize: 16)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextField(
                    controller: TextEditingController(text: amount),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: onCurrencySelected,
                  child: Container(
                    height: 50,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CountryFlag.fromCountryCode(
                          width: 26,
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
              ]),
              const SizedBox(height: 5),
              Text(rateInfo, style: TextStyle(color: Colors.grey.shade700)),
            ],
          ),
        ),
      ),
    );
  }
}
