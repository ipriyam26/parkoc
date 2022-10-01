import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddVehicleController extends GetxController {
  RxString vehicleName = ''.obs;
  RxString vehicleRegistrationNumber = ''.obs;
  RxInt vehicleType = 0.obs;

  bool addVehicleToList() {
    String error = "";
    if (vehicleName.value == '') {
      error += "Please Enter a valid Vehicle Name";
    }
    if (vehicleRegistrationNumber.value == '') {
      if (error != "") {
        error += '\n& ';
      }
      error += "Please Enter a valid Registration Number";
    }
    if (vehicleType.value == 0) {
      if (error != "") {
        error += '\n& ';
      }
      error += "Please Select a Vehicle Type";
    }
    if (error != '') {
      Get.snackbar(
        "Failure",
        // e.toString(),
        error,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      );
      return false;
    } 
      print("hello");
  Get.snackbar(
          "Success",
          "Added vehicle Successfully",
          icon: const Icon(Icons.done, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
        );
      return true;

  }
}
