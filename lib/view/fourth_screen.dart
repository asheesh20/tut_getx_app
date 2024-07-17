import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/opacity_controller.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  final OpacityController controller = Get.put(OpacityController());
  //double opacity = 0.4;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // child: Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.red.withOpacity(opacity),
            // ),
            child: Obx(() => Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(controller.opacity.value),
                )),
          ),
          Obx(() => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.onChanged(value);
              }))
          // Slider(
          //   value: opacity,
          //   onChanged: (value) {
          //     opacity = value;
          //     setState(() {});
          //   },
          // ),
        ],
      ),
    );
  }
}
