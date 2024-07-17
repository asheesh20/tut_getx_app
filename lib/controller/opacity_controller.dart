import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 0.4.obs;

  onChanged(double value) {
    opacity.value = value;
  }
}