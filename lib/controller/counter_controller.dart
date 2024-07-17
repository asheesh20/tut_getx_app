import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  // obs makes the counter variable in check ie checks if there is any change the counter
  //variable or not
  RxInt counter = 0.obs;

  incrementCounter() {
    counter.value++;
  }
}
