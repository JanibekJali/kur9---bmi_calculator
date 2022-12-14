import 'package:bmi_calculator/constants/colors/colors.dart';
import 'package:bmi_calculator/data/local_data/bmi_local_data.dart';
import 'package:bmi_calculator/presentaion/widgets/calculate_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/text_styles/text_styles.dart';

class SecondPage extends StatelessWidget {
  final int? bmiWeight;
  final int? bmiHeight;
  const SecondPage({this.bmiWeight, this.bmiHeight});

  @override
  Widget build(BuildContext context) {
    final bmi = BmiLocalData.calculateBmi(weight: bmiWeight, height: bmiHeight);
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Result',
                  style: TextStyles.text60Wight,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      BmiLocalData.getResult(bmi),
                      style: TextStyles.text35Green,
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyles.text100White,
                    ),
                    Text(
                      BmiLocalData.getDescription(bmi),
                      style: TextStyles.text15White,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateWidget(
          text: 'Kaira Esepte',
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
