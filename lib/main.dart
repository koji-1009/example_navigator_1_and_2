import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_1_and_2/app.dart';

void main() {
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(const App());
}
