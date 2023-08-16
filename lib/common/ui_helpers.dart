import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmprogresshud/bmprogresshud.dart';

class UIHelpers {
  static void showLoading({String? msg}) {
    ProgressHud.showLoading(text: msg ?? 'Loading');
  }

  static void dismissLoading() {
    ProgressHud.dismiss();
  }

  static void showSnackBar({required String msg}) {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(
          msg,
        ),
        duration: const Duration(
          seconds: 2,
        ),
      ),
    );
  }
}
