import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text('Move to the Home Screen'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Move to the First Screen'),
            ),
          ),
          Container(
            //height: 100,
            height: height * 0.1,
            //width: 100,
            width: Get.width * 0.25,
            color: Colors.grey[400],
            child: const Center(
              child: Text('Box 1'),
            ),
          ),
        ],
      ),
    );
  }
}
