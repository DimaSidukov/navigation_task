import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';

import '../location_widget.dart';
import 'navigation.dart';

class EtherworldScreen extends StatelessWidget {
  const EtherworldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Location etherworld = LocationProvider.etherworld;

    return CustomLocation(
      imgLink: etherworld.imgLink,
      locationName: etherworld.locationName,
      locationDescription: etherworld.locationDescription,
      onFirstOptionClicked: () {
        AppRouter.router
            .navigateTo(context, 'finish', transition: TransitionType.fadeIn);
      },
      onSecondOptionClicked: () {
        LocationProvider.routes.add('deepForest');
        AppRouter.router.navigateTo(context, 'deepForest',
            transition: TransitionType.fadeIn);
      },
    );
  }
}
