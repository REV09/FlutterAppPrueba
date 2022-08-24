import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(child: ContadorPage()),
    );
  }
}
