import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';
import 'package:navigation_task/screens/navigation.dart';

import '../location_widget.dart';

class UnderworldScreen extends StatelessWidget {
  const UnderworldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Location underworld = LocationProvider.underworld;

    return CustomLocation(
      imgLink: underworld.imgLink,
      locationName: underworld.locationName,
      locationDescription: underworld.locationDescription,
      onFirstOptionClicked: () {
        LocationProvider.routes.add('deepForest');
        AppRouter.router.navigateTo(context, 'deepForest',
            transition: TransitionType.fadeIn);
      },
      onSecondOptionClicked: () {
        LocationProvider.routes.add('caves');
        AppRouter.router
            .navigateTo(context, 'caves', transition: TransitionType.fadeIn);
      },
    );
  }
}
