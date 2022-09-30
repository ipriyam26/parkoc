import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final dark = ThemeData.dark().copyWith();
  static final light = ThemeData.light().copyWith(
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
          color: const Color(0xff0477FF),
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        headline5: TextStyle(
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
          color: const Color(0xff0477FF),
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
    primaryColor: const Color(0xff0477FF),
    canvasColor: Colors.white,
    cardColor: const Color(0xffFFF5E9),
    scaffoldBackgroundColor: const Color(0xffFFF5E9),
    focusColor: Color(0xffD9D9D966),
    highlightColor: Colors.black,
    
  );
}
