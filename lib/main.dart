import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parkoc/screen/add_vehicle.dart';
import 'package:parkoc/home.dart';
import 'package:parkoc/private_parking_form.dart';
import 'package:parkoc/screen/profile.dart';
import 'package:parkoc/screen/select.dart';
import 'package:parkoc/screen/splash.dart';
import 'package:parkoc/theme.dart';

import 'firebase_options.dart';


Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: 
   DefaultFirebaseOptions.currentPlatform);
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
            
            
 const SplashScreen(),
             
             );
      },
    );
  }
}
