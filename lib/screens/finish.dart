import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Finish")),
        body: Column(children: [
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("You have finished the game!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700))),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Here is a history of all location you have visited",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: ListView.builder(
                itemCount: LocationProvider.routes.length,
                prototypeItem: ListTile(
                  title: Text(LocationProvider.routes.first),
                ),
                itemBuilder: (BuildContext context, int position) {
                  return ListTile(
                      title: Text(LocationProvider.routes[position]));
                }),
          ))
        ]));
  }
}
