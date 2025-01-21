import 'package:flutter/material.dart';
import 'package:todo_list/app/view/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xFF4A4A4A);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            color: textColor,
            fontSize: 14,
          ),
        ),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
