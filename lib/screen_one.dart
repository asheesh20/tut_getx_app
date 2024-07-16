import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({
    super.key,
    this.name = '',
  });

  final String name;

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One ' + widget.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
              child: const Text('Move to the Previous Screen'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => ScreenTwo()));
                Get.to(ScreenTwo());
              },
              child: const Text('Move to the Next Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
