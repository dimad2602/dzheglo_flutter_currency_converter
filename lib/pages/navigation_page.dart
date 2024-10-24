import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/pages/ATMs_page/atms_page.dart';
import 'package:dzheglo_flutter_currency_converter/pages/main_page/main_page.dart';
import 'package:dzheglo_flutter_currency_converter/pages/moneybox_page/moneybox_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _MainPageState();
}

class _MainPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const MainPage(),
    const AtmsPage(),
    const MoneyBoxPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Банкоматы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Копилка',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int i) {
          i == 0
              ? context
                  .read<CurrencyConverterBloc>()
                  .add(const CurrencyConverterEvent.started())
              : null;
          _onItemTapped(i);
        },
      ),
    );
  }
}
