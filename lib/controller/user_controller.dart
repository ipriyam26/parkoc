import 'package:get/get.dart';

class UserController extends GetxController {
  final String name = 'Bhupesh Negi';
  final String email = 'bhupesh1618@gmail.com';
  final String phone = '+91 7497898174';
  final String image =
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80';
  final List<String> vehicles = ['MH 12 AB 1234', 'MH 12 AB 1235'];

  void addVehicle(String vehicle) {
    vehicles.add(vehicle);
  }
}
