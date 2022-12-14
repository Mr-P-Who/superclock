import 'package:flutter/material.dart';
import 'package:superclock/home.dart';
import 'package:superclock/theme/theme_constants.dart';

void main() {
  runApp(const SuperClock());
}

class SuperClock extends StatelessWidget {
  const SuperClock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myDarkTheme(context),
      darkTheme: myDarkTheme(context),
      home: HomePage(),
    );
  }
}
