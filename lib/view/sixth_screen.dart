import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/fruits_controller.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  //double variable = 0;
  final RandomController random = Get.put(RandomController());
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Example'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Nothing as such'),
          //Obx(() => Text('Nothing as such')),
          Obx(() => Slider(
                value: random.variable.value,
                onChanged: (value) {
                  random.changingMethod(value);
                },
              ))
          // Slider(
          //     value: variable,
          //     onChanged: (value) {
          //       setState(() {
          //         variable = value;
          //       });
          //       // variable = value;
          //     }),
        ],
      ),
    );
  }
}
