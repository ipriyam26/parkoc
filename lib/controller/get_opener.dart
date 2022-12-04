import 'package:get/get.dart';

class OpenerController extends GetxController {
  RxBool is_open = false.obs;

  void toggle() {
    is_open.value = !is_open.value;
  }
}
