// import 'dart:math' as math;

import 'package:bmi_calculator/presentaion/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../../constants/text_styles/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight = 60;

  void countAdd() {
    setState(() {});
    weight = weight + 1;
  }

  void countRemove() {
    setState(() {});
    if (weight == 0) {
      weight++;
    }
    weight = weight - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculator'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomConatainer(
                padHor: 27,
                padVer: 20,
                text: ' male',
                icons: Icons.male,
              ),
              CustomConatainer(
                padHor: 20,
                padVer: 20,
                text: ' FeMaLe',
                icons: Icons.female,
              ),
            ],
          ),
          // Slider(max: 300, value: 24, onChanged: ((value) {}))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.teal,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'WEiGht'.toUpperCase(),
                        style: TextStyles.text15Grey,
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyles.text60Wight,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: countRemove,
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: countAdd,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.teal,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'WEiGht'.toUpperCase(),
                        style: TextStyles.text15Grey,
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyles.text60Wight,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 199, 175, 175),
                                shape: BoxShape.circle),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: const CircleBorder(),
                                splashColor: Colors.blue,
                                onTap: countRemove,
                                child: const Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    '-',
                                    style: TextStyles.text100White,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: countAdd,
                            child: const Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Adam {
  final String? name;
  final int? jash;
  Adam({this.name, this.jash});
}
