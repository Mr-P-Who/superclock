import 'package:flutter/material.dart';
import 'package:superclock/home.dart';

void main() {
  runApp(const SuperClock());
}

class SuperClock extends StatelessWidget {
  const SuperClock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
