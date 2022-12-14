import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  final String? text;
  final String? countText;
  final void Function()? onPlus;
  final void Function()? onMinus;

  const WeightAgeWidget({
    this.onPlus,
    this.onMinus,
    this.countText,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            Text(
              text!.toUpperCase(),
              style: TextStyles.text15Grey,
            ),
            Text(
              countText!,
              style: TextStyles.text60Wight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: IconButton(
                    onPressed: onMinus,
                    icon: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  child: IconButton(
                    onPressed: onPlus,
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
