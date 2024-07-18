import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/notification_controller.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  final NotificationController controller = Get.put(NotificationController());
  //bool notification = false;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fifth Screen'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Notification',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              Obx(
                () => Switch(
                  value: controller.notification.value,
                  onChanged: (value) {
                    controller.onChanged(value);
                  },
                ),
              ),
              // Switch(
              //     value: notification,
              //     onChanged: (value) {
              //       notification = value;
              //       setState(() {});
              //     }),
            ],
          )
        ],
      ),
    );
  }
}
