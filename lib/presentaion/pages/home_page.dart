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
            children: [Container()],
          )
        ],
      ),
    );
  }
}
