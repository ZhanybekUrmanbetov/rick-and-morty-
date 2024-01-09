import 'package:flutter/material.dart';

import 'package:flutter_application_26/Features/Ui/Pages//Pages/CharactersPage.dart';
import 'package:flutter_application_26/Features/Ui/Pages/FirstPage.dart';
import 'package:flutter_application_26/Features/Ui/Pages/Pages/SecondPage.dart';
import 'package:flutter_application_26/Features/Ui/Pages/Pages/ThirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/SecondPage': (context) => const SecondPage(),
        '/ThirdPage': (context) => const ThirdPage(),
        '/CharacterPage': (context) => CharactersPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(91, 105, 117, 1),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.green),
          headline2: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          headline3: TextStyle(fontSize: 24, color: Colors.green),
          bodyText1: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w200, color: Colors.white),
          caption: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ),
    );
  }
}
