import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/main.dart';
import 'package:navigation_task/screens/caves.dart';
import 'package:navigation_task/screens/deep_forest.dart';
import 'package:navigation_task/screens/etherworld.dart';
import 'package:navigation_task/screens/finish.dart';
import 'package:navigation_task/screens/underworld.dart';
import 'package:navigation_task/screens/wastelands.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static final Handler _mainHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const MyHomePage(title: "Quest"));

  static final Handler _deepForestHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const DeepForestScreen());

  static final Handler _wastelandsHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const WastelandsScreen());

  static final Handler _cavesHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const CavesScreen());

  static final Handler _underworldHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const UnderworldScreen());

  static final Handler _etherworldHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const EtherworldScreen());

  static final Handler _finishHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const FinishScreen());

  static void setupRouter() {
    router.define('main', handler: _mainHandler);
    router.define('deepForest', handler: _deepForestHandler);
    router.define('wastelands', handler: _wastelandsHandler);
    router.define('caves', handler: _cavesHandler);
    router.define('underworld', handler: _underworldHandler);
    router.define('etherworld', handler: _etherworldHandler);
    router.define('finish', handler: _finishHandler);
  }
}
