import 'package:bmi_calculator/presentaion/pages/second_page.dart';
import 'package:flutter/material.dart';

import 'presentaion/pages/home_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      // home: SecondPage(),
      routes: {
        // ResultPage.route: (context) => const ResultPage(),
      },
    );
  }
}
