import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    required this.onTap,
    this.text,
  });
  final String? text;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text!,
            style: TextStyles.text35Black,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
