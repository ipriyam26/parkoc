import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parkoc/screen/login.dart';
import 'package:parkoc/screen/select.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final LoginController loginController = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
    loginCheck();
  }

  Future<void> loginCheck() async {
    // bool loggedIn = await loginController.securelyLogin();
    // print(loggedIn);
    // if (loggedIn) {
      Timer(const Duration(seconds: 4), () => Get.to(() => const SelectScreen()));
    // } else {
      // Timer(const Duration(seconds: 4), () => Get.to(() => Login()));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 800.h,
      alignment: Alignment.center,
      color: Colors.white,
      child: Image.asset('asset/logo.png'),
    );
  }
}