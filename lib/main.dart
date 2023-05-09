import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xchange/pages/currencies.dart';
import 'package:xchange/pages/home.dart';
import 'package:xchange/pages/settings.dart';
import 'package:xchange/providers/currencies_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => checkBoxProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFFC3AB2A),
            onPrimary: Colors.black,
            secondary: Colors.white,
            onSecondary: Colors.black,
            error: Color(0xFFC3AB2A),
            onError: Colors.black,
            background: Color(0xFFC3AB2A),
            onBackground: Color(0xFF000000),
            surface: Colors.white,
            onSurface: Colors.black),
        scaffoldBackgroundColor: const Color(0xFFC3AB2A),
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                Color(0xFFB5AFAF),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 50))),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/settings': (context) => const SettingPage(),
        '/currencies': (context) => const CurrenciesPage()
      },
    );
  }
}
