import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/fonts.gen.dart';
import 'package:musicen/screens/home_screen/home.screen.dart';
import 'package:musicen/screens/library_screen/library.screen.dart';
import 'package:musicen/screens/search_screen/search.screen.dart';
import 'package:musicen/screens/splash_screen/splash.screen.dart';
import 'package:musicen/screens/widgets/bottom.navigation.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var fontFamily = FontFamily.roboto;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: fontFamily,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: TextThemeColor.mainTextColor,
          ),
          headlineMedium: TextStyle(
            fontFamily: fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontFamily: fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontFamily: fontFamily,
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14,
            color: Colors.white70,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
