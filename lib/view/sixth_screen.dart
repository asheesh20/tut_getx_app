import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tut_getx_app/controller/fruits_controller.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  // final List<String> places = [
  //   'California',
  //   'Los Angles',
  //   'Miami',
  //   'Florida',
  //   'San Francisco',
  //   'New York'
  // ];
  // final List<String> favPlaces = [];
  final PlacesController destination = Get.put(PlacesController());
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sixth Screen'),
      ),
      body: ListView.builder(
          //itemCount: places.length,
          itemCount: destination.places.length,
          itemBuilder: (context, index) {
            return Card(
              // child: ListTile(
              //   onTap: () {
              //     if (favPlaces.contains(places[index])) {
              //       favPlaces.remove(places[index]);
              //     } else {
              //       favPlaces.add(places[index]);
              //     }
              //     setState(() {});
              //   },
              //   title: Text(places[index].toString()),
              //   trailing: Icon(
              //     Icons.favorite,
              //     color: favPlaces.contains(places[index]) ? Colors.red : null,
              //   ),
              // ),
              child: Obx(() => ListTile(
                    onTap: () {
                      if (destination.favPlaces
                          .contains(destination.places[index])) {
                        destination.removePlace(destination.places[index]);
                      } else {
                        destination.addPlace(destination.places[index]);
                      }
                    },
                    title: Text(destination.places[index].toString()),
                    trailing: Icon(
                      Icons.favorite,
                      color: destination.favPlaces
                              .contains(destination.places[index])
                          ? Colors.red
                          : Colors.grey[300],
                    ),
                  )),
            );
          }),
    );
  }
}
