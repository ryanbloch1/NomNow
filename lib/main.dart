import 'package:flutter/material.dart';
import 'package:nom_now/app.dart';
import 'package:nom_now/injection.dart';

void main() async {
  await configureDependencies();
  runApp(const NomNowApp());
}
