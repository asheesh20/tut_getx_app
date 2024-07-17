import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/counter_controller.dart';
import 'package:tut_getx_app/view/fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final CounterController controller = Get.put(CounterController());
  //int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              // child: Text(
              //   counter.toString(),
              //   style: TextStyle(fontSize: 60),
              // ),
              child: Obx(() {
            return Text(
              controller.counter.toString(),
              style: const TextStyle(fontSize: 60),
            );
          })),
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(FourthScreen());
              },
              child: Text('Move to Fourth Screen'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counter++;
          // setState(() {});
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
