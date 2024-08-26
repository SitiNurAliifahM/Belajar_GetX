import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'udahan ah cape',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Error', 'hayoh we dikurangan',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.blue);
    } else {
      bilangan.value--;
    }
  }

  void resetData() {
    bilangan.value = 0;
    Get.snackbar('Restart', 'anjay di riset',
        snackPosition: SnackPosition.BOTTOM, backgroundColor: const Color.fromARGB(255, 75, 157, 224));
  }
}
