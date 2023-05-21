import 'package:currency_converter/provider/api_provider.dart';
import 'package:currency_converter/provider/theme_provider.dart';
import 'package:currency_converter/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeProvider>(create:(context)=>ThemeProvider() ),
    ChangeNotifierProvider<CurrencyProvider>(
      create: (context) => CurrencyProvider(),

      builder: (context, _) => MaterialApp(
        theme: ThemeData(
            backgroundColor: const Color(0xFF254B62),
            buttonColor: const Color(0xFF000000),
            cardColor: const Color(0xfffffdfd)),
        darkTheme: ThemeData(
            backgroundColor: const Color(0xff2b2d3c),
            buttonColor: const Color(0xFFFFFFFF),
            cardColor: const Color(0xff54545b)),
        themeMode:  (Provider.of<ThemeProvider>(context).isDark) ? ThemeMode.dark : ThemeMode.light,
        routes: {
          '/': (context) => const HomeScreen(),
        },
      ),
    ),
  ]));
}