import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/pages/ATMs_page/atms_page.dart';
import 'package:dzheglo_flutter_currency_converter/pages/main_page/main_page.dart';
import 'package:dzheglo_flutter_currency_converter/pages/moneybox_page/moneybox_page.dart';
import 'package:dzheglo_flutter_currency_converter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        selectedItemColor: AppColors.selectedIconColor,
        unselectedItemColor: AppColors.textLightGreyColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/main_page_icon.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0
                    ? AppColors.selectedIconColor
                    : AppColors.textLightGreyColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/atms_page_icon.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1
                    ? AppColors.selectedIconColor
                    : AppColors.textLightGreyColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Банкоматы',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/money_box_page_icon.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2
                    ? AppColors.selectedIconColor
                    : AppColors.textLightGreyColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Копилка',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int i) {
          if (i == 0) {
            context
                .read<CurrencyConverterBloc>()
                .add(const CurrencyConverterEvent.started());
          }
          _onItemTapped(i);
        },
      ),
    );
  }
}
