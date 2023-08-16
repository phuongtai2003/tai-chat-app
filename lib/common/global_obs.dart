import 'package:get/get.dart';

class GlobalObs {
  static RxString username = ''.obs;
  static RxString email = ''.obs;
  static void updateInfo({String? newName, String? newEmail}) {
    username.value = newName ?? username.value;
    email.value = newEmail ?? email.value;
  }
}
