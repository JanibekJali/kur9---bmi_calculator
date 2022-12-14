// import 'dart:math' as math;

import 'dart:developer';

import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:bmi_calculator/presentaion/pages/second_page.dart';
import 'package:bmi_calculator/presentaion/widgets/calculate_widget.dart';
import 'package:bmi_calculator/presentaion/widgets/custom_container.dart';
import 'package:bmi_calculator/presentaion/widgets/decoration_b_r_widget.dart';
import 'package:bmi_calculator/presentaion/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

Color activeColor = Colors.red;
Color inactiveColor = Colors.teal;

enum Gender {
  male,
  female,
  none,
}

enum Toyota {
  camry,
  coldina,
  ist,
  landCruicer,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight = 60;
  int age = 25;
  double sliderHeight = 50;
  void countWeight(int basildy) {
    if (basildy == 0) {
      weight--;
    }
    if (basildy == 1) {
      weight++;
    }
    setState(() {});
  }

  void countAge(int tuuraSanBer) {
    if (tuuraSanBer == 0) {
      age--;
    }
    if (tuuraSanBer == 1) {
      age++;
    }
    setState(() {});
  }

  // void maleFamale(int san) {
  //   if (san == 1) {
  //     maleSelected = activeColor;
  //     femaleSelected = inactiveColor;
  //   }
  //   if (san ==2) {
  //     femaleSelected = activeColor;
  //     maleSelected = inactiveColor;
  //   }
  //   setState(() {});
  // }
  final male = Gender.male;
  final female = Gender.female;
  final none = Gender.none;
  Color maleSelected = inactiveColor;
  Color femaleSelected = inactiveColor;

  void maleFamale(Gender gender) {
    if (gender == male) {
      maleSelected = activeColor;
      femaleSelected = inactiveColor;
    }
    if (gender == female) {
      femaleSelected = activeColor;
      maleSelected = inactiveColor;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomConatainer(
                onTap: () => maleFamale(male),
                color: maleSelected,
                padHor: 27,
                padVer: 20,
                text: ' male',
                icons: Icons.male,
              ),
              CustomConatainer(
                onTap: () {
                  maleFamale(female);
                },
                color: femaleSelected,
                padHor: 20,
                padVer: 20,
                text: ' FeMaLe',
                icons: Icons.female,
              ),
            ],
          ),
          Container(
            decoration: DecorationBRWidget.borderRadius12Teal,
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              children: [
                const Text(
                  'Height',
                  style: TextStyles.text25Black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      sliderHeight.toStringAsFixed(0),
                      style: TextStyles.text60Wight,
                    ),
                    const Text(
                      'cm',
                      style: TextStyles.text15White,
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  thumbColor: Colors.black,
                  max: 300,
                  min: 0,
                  value: sliderHeight,
                  onChanged: ((adamOzgorttu) {
                    sliderHeight = adamOzgorttu;
                    setState(() {});
                    log('adamOzgorttu ===> $adamOzgorttu');
                  }),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeightAgeWidget(
                text: 'WeIGHt',
                countText: weight.toString(),
                onMinus: () => countWeight(0),
                onPlus: () => countWeight(1),
              ),
              WeightAgeWidget(
                text: 'Age',
                countText: age.toString(),
                onMinus: () => countAge(0),
                onPlus: () {
                  countAge(1);
                },
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: CalculateWidget(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(
                  bmiWeight: weight,
                  bmiHeight: sliderHeight.toInt(),
                ),
              ),
            );
          },
          text: 'Calulate'),
    );
  }
}
