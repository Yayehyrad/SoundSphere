import 'package:flutter/material.dart';
import 'package:soundsphere/core/configs/themes/app_theme.dart';
import 'package:soundsphere/presentation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme ,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}