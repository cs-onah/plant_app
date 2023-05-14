import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/home.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Home(),
    );
  }
}

final appTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: AppColors.textGreen,
    secondary: AppColors.accentGreen,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
  iconTheme: IconThemeData(size: 28),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.textGreen,
    ),
    displayMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppColors.textGreen,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: AppColors.textGreen,
    ),
  )..apply(fontFamily: GoogleFonts.roboto().fontFamily),
);

class AppColors {
  static const textGreen = Color(0xff3F483C);
  static const accentGreen = Color(0xffE4F1E0);
  static const accentPink = Color(0xffFDF2F0);
}
