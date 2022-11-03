import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/data/location_provider.dart';
import 'package:navigation_task/screens/navigation.dart';

import '../location_widget.dart';

class WastelandsScreen extends StatelessWidget {
  const WastelandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Location wastelands = LocationProvider.wastelands;

    return CustomLocation(
      imgLink: wastelands.imgLink,
      locationName: wastelands.locationName,
      locationDescription: wastelands.locationDescription,
      onFirstOptionClicked: () {
        LocationProvider.routes.add('underworld');
        AppRouter.router.navigateTo(context, 'underworld',
            transition: TransitionType.fadeIn);
      },
      onSecondOptionClicked: () {
        LocationProvider.routes.add('etherworld');
        AppRouter.router.navigateTo(context, 'etherworld',
            transition: TransitionType.fadeIn);
      },
    );
  }
}
