import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parkoc/add_vehicle.dart';
import 'package:parkoc/home.dart';
import 'package:parkoc/private_parking_form.dart';
import 'package:parkoc/profile.dart';
import 'package:parkoc/select.dart';
import 'package:parkoc/splash.dart';
import 'package:parkoc/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Themes.light,
            darkTheme: Themes.dark,
            home:  
            
            
 PrivateParkingForm(),
             
             );
      },
    );
  }
}
