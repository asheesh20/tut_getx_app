// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class FruitsController extends GetxController {
//   RxList<String> fruits = ['Orange', 'Apple', 'Kiwi', 'Banana', 'Mango'].obs;
//   RxList favFruits = [].obs;

//   addTofavorite() {
//     if(favFruits.value.contains(fruits[index].toString()))
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestingController extends GetxController {
  RxInt x = 0.obs;

  increment() {
    x.value++;
  }
}
