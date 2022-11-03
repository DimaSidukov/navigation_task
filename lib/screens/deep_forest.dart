import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';
import 'package:navigation_task/screens/navigation.dart';

import '../location_widget.dart';

class DeepForestScreen extends StatelessWidget {
  const DeepForestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Location deepForest = LocationProvider.deepForest;

    return CustomLocation(
      imgLink: deepForest.imgLink,
      locationName: deepForest.locationName,
      locationDescription: deepForest.locationDescription,
      onFirstOptionClicked: () {
        LocationProvider.routes.add('wastelands');
        AppRouter.router.navigateTo(context, 'wastelands',
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
