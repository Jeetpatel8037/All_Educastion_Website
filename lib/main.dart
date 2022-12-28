import 'package:all_educastion_websites/screens/HomePage.dart';
import 'package:all_educastion_websites/screens/JavaPoint.dart';
import 'package:all_educastion_websites/screens/Tutorialpoints.dart';
import 'package:all_educastion_websites/screens/W3schools.dart';
import 'package:all_educastion_websites/screens/Wikipedia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(routes: {
      '/': (context) => const HomePage(),
      'Wikipedia': (context) => const Wikipedia(),
      'JavaPoint': (context) => const JavaPoint(),
      'Tutorialpoints': (context) => const Tutorialpoints(),
      'W3schools': (context) => const W3schools(),
    }),
  );
}
