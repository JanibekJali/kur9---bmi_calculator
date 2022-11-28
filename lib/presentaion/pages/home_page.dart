import 'package:bmi_calculator/presentaion/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              CustomConatainer(
                text: 'maLe',
                icons: Icons.male,
              ),
              CustomConatainer(
                text: ' FeMaLe',
                icons: Icons.female,
              ),
            ],
          ),
          const CustomConatainer(
            text: 'Height',
          ),
          Slider(max: 300, value: 24, onChanged: ((value) {}))
        ],
      ),
    );
  }
}
