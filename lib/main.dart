import 'package:flutter/material.dart';
import 'package:imb_calculator_theme/ibm_d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//The variable name 'background_color' isn't a lowerCamelCase identifier.  => backgroundcolor

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenD(),
    );
  }
}
