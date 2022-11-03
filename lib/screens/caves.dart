import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';
import 'package:navigation_task/screens/navigation.dart';

import '../location_widget.dart';

class CavesScreen extends StatelessWidget {
  const CavesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Location caves = LocationProvider.caves;

    return CustomLocation(
      imgLink: caves.imgLink,
      locationName: caves.locationName,
      locationDescription: caves.locationDescription,
      onFirstOptionClicked: () {
        LocationProvider.routes.add('underworld');
        AppRouter.router.navigateTo(context, 'underworld',
            transition: TransitionType.fadeIn);
      },
      onSecondOptionClicked: () {
        LocationProvider.routes.add('wastelands');
        AppRouter.router.navigateTo(context, 'wastelands',
            transition: TransitionType.fadeIn);
      },
    );
  }
}
