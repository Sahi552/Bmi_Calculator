import 'package:bmi_calc/res/util.dart';
import 'package:bmi_calc/screen/home_screen/home_Screen.dart';
import 'package:bmi_calc/screen/result_screen/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Appstyle.primary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        'home': (context) => const HomeScreen(),
        'result': (context) => const ResultScreen()
      },
    );
  }
}
