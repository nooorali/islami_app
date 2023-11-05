import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static bool isDark=true;

  static ThemeData lightTheme=ThemeData(
    primaryColor: const Color(0xffB7935F),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xffB7935F),
      seedColor: const Color(0xffB7935F),
      onSecondary: Colors.black,
      onPrimary: const Color(0xffB7935F),
      onBackground: const Color(0xffF8F8F8),
    ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle:GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
      ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color:Colors.black ,
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        bodySmall: GoogleFonts.monda(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedItemColor:Colors.black,
      unselectedItemColor: Colors.white,
    ),
    dividerColor: const Color(0xffB7935F),

  );
  static ThemeData darkTheme=ThemeData(
    primaryColor: const Color(0xff141A2E),
      colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xff141A2E),
        seedColor: const Color(0xff141A2E),
        onSecondary: const Color(0xffFACC1D),
        onPrimary: const Color(0xffFACC1D),
        onBackground: const Color(0xff141A2E),
      ),
      appBarTheme: AppBarTheme(
        iconTheme:const IconThemeData(
          color: Colors.white,
        ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle:GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
      ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color:Colors.white ,
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodySmall: GoogleFonts.monda(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:Color(0xff141A2E),
      selectedItemColor:Color(0xffFACC1D),
      unselectedItemColor: Colors.white,
    ),
    dividerColor:const Color(0xffFACC1D),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor:Color(0xff141A2E),
    )
  );
}