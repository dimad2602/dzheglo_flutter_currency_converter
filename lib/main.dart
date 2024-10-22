import 'package:dzheglo_flutter_currency_converter/data/repositories/currency_repo/currency_repo.dart';
import 'package:dzheglo_flutter_currency_converter/domain/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:dzheglo_flutter_currency_converter/pages/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyConverterBloc(CurrencyRepo())..add(const CurrencyConverterEvent.started()),
      child: ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: child,
          );
        },
        child: NavigationPage(),
      ),
    );
  }
}
