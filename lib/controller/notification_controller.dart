import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notification = false.obs;
  onChanged(value) {
    notification.value = value;
  }
}
