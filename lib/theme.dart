import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final dark = ThemeData.dark().copyWith();
  static final light = ThemeData.dark().copyWith(
    primaryColor: Color(0xff0477FF),
    canvasColor: Colors.white,
    cardColor: const Color(0xffFFF5E9),
    scaffoldBackgroundColor: const Color(0xffFFF5E9),
    highlightColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xff0477FF)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r))))),

    textTheme: TextTheme(
        bodyText2: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            fontFamily: GoogleFonts.poppins().fontFamily,
            color: const Color(0xff141313)),
        headline3: TextStyle(
          color: light.primaryColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        bodyMedium: TextStyle(
            color: const Color(0xff141313),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.poppins().fontFamily,
            letterSpacing: -3),
        headline4: TextStyle(
          color: const Color(0xff141313),
          fontSize: 12.sp,
          fontWeight: FontWeight.w300,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        headline1: TextStyle(
          color: light.primaryColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        headline2: TextStyle(
          color: const Color(0xff141313),
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        caption: TextStyle(
          color: const Color(0xff141313),
          fontSize: 10.sp,
          fontWeight: FontWeight.w300,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.poppins().fontFamily,
          color: const Color(0xff141313),
        )),

    // appBarTheme: AppBarTheme(
    //   color: Colors.white,
    //   elevation: 0,
    //   iconTheme: IconThemeData(color: Colors.black),
    //   textTheme: TextTheme(
    //     headline6: TextStyle(
    //       color: Colors.black,
    //       fontSize: 20,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: Colors.white,
    //   selectedItemColor: Colors.black,
    //   unselectedItemColor: Colors.grey,
    //   elevation: 0,
    // ),
    // textTheme: TextTheme(
    //   bodyText1: TextStyle(
    //     color: Colors.black,
    //     fontSize: 16,
    //   ),
    //   bodyText2: TextStyle(
    //     color: Colors.black,
    //     fontSize: 14,
    //   ),
    // ),
  );
}
