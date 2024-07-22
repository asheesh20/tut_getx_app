import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/fruits_controller.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  //bool change = false;
  final TestingController notifi = Get.put(TestingController());
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sixth Screen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Notification',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            width: 50,
          ),
          Obx(
            () => Switch(
              value: notifi.change.value,
              onChanged: (value) {
                notifi.pushButton(value);
              },
            ),
          )
          // Switch(
          //     value: change,
          //     onChanged: (value) {
          //       setState(() {
          //         change = value;
          //       });
          //     })
        ],
      ),
    );
  }
}
