import 'package:flutter/material.dart';

import 'data/location_provider.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation(
      {super.key,
      required this.imgLink,
      required this.locationName,
      required this.locationDescription,
      required this.onFirstOptionClicked,
      required this.onSecondOptionClicked});

  final String imgLink;
  final String locationName;
  final String locationDescription;
  final void Function()? onFirstOptionClicked;
  final void Function()? onSecondOptionClicked;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text(locationName),
            ),
            body: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  imgLink,
                  fit: BoxFit.cover,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      locationName,
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      locationDescription,
                      style:
                          const TextStyle(fontSize: 15, fontFamily: 'Raleway'),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: ElevatedButton(
                      onPressed: onFirstOptionClicked,
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(220, 40)),
                      child: const Text(
                        "First option",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      onPressed: onSecondOptionClicked,
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(220, 40)),
                      child: const Text(
                        "Second choice",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ))),
        onWillPop: () {
          if (LocationProvider.routes.isNotEmpty) {
            // LocationProvider.routes.removeLast();
          }
          return Future.value(true);
        });
  }
}
