import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/counter_controller.dart';
import 'package:tut_getx_app/controller/fruits_controller.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  final TestingController controller = Get.put(TestingController());
  //int x = 1;
  @override
  Widget build(context) {
    print('Good');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sixth Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            // child: Text(
            //   x.toString(),
            //   style: const TextStyle(fontSize: 50),
            // ),
            child: Obx(() => Text(
                  controller.x.toString(),
                  style: const TextStyle(fontSize: 50),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          // x++;
          // setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
