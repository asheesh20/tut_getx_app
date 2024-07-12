import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Sample Snackbar', 'Snackbar displayed using GetX',
              backgroundColor: Colors.grey);
        },
        child: const Icon(Icons.add),
      ),
    ));
  }
}
