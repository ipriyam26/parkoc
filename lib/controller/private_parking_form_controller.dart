import 'package:get/get.dart';

class PrivateParkingFormController extends GetxController {
  RxInt operationalHours = 0.obs;
  RxInt availableSlots = 0.obs;
  RxDouble area = 0.0.obs;
  RxInt isSecure = 0.obs;
  bool submitRequest() {
    if (operationalHours.value == 0 ||
        availableSlots.value == 0 ||
        area.value == 0.0 ||
        isSecure.value == 0) {
      Get.snackbar("Error", "Please fill all the fields");
      return false;
    } else {
      Get.snackbar("Success", "Request submitted successfully");
      return true;
    }
  }
}
