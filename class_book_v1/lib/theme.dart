import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 아이콘 테마
IconThemeData iconTheme() {
  return const IconThemeData(color: Colors.black);
}

// 앱바 테마
AppBarTheme appBarTheme() {
  return AppBarTheme(
      centerTitle: false,
      color: Colors.white,
      elevation: 0.0,
      iconTheme: iconTheme(),
      titleTextStyle: GoogleFonts.nanumGothic(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.orange)
  );
}

// 바텀 네비게이션 테마
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return const BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true
  );
}

// 전체 앱 테마
ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
    primarySwatch: Colors.orange
  );
}