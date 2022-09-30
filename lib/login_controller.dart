import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString email = ''.obs;
  RxString password = ''.obs;

  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;
  bool login() {
    if (email.value.contains('@') && password.value.length > 6) {
      if (email.value == 'bhupesh@gmail.com' && password.value == 'bhupesh') {
        Get.snackbar(
          "Login Successful",
          "Welcome Bhupesh",
          icon: const Icon(Icons.person, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
        );
        return true;
      }
      Get.snackbar(
        "Wrong Credentials",
        // e.toString(),
        "Please enter correct email and password",
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      );
      return false;
    }
     Get.snackbar(
        "Wrong Credentials",
        // e.toString(),
        "Please enter correct email and password",
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      );
    return false;
  }
}
