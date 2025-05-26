import 'package:flutter/material.dart';
import 'package:nom_now/app/router.dart';

class NomNowApp extends StatelessWidget {
  const NomNowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NomNow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      routerConfig: AppRouter().config(),
    );
  }
}
