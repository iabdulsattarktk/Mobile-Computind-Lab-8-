import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF073B4C),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF118AB2),
          secondary: Color(0xFF06D6A0),
          tertiary: Color(0xFFFFD166),
          error: Color(0xFFEF476F),
          surface: Color(0xFF0C4A5E),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF073B4C),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardTheme: CardThemeData(
          color: const Color(0xFF0C4A5E),
          elevation: 6,
          shadowColor: Colors.black45,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
}
