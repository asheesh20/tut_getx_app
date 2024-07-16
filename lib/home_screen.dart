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
        title: const Text('GetX Tutorial'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX Dialog Alert'),
              subtitle: const Text('Alert Box displayed using GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  content: const Column(
                    children: [
                      Text('Are you sure you want to delete this'),
                      Text('chat?'),
                    ],
                  ),
                  //middleText: 'Are you sure you want to delete this chat?',
                  //textConfirm: 'Yes',
                  //textCancel: 'No',
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text('Yes'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      //Navigator.of(context).pop();
                      Get.back();
                    },
                    child: const Text('Cancel '),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text('GetX BottomSheet'),
              subtitle: const Text('BottomSheet displayed using GetX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => ScreenOne()));
              // Get.to(const ScreenOne(
              //   name: 'Testing Name',
              // ));
              Get.toNamed('/screenOne'); // Using Rounting Methods
            },
            child: const Text('Move to Next Screen'),
          ),
        ],
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
