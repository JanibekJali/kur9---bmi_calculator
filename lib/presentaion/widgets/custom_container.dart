import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomConatainer extends StatelessWidget {
  final IconData? icons;
  final double? padHor;
  final double? padVer;
  final String? text;
  final Color? color;
  final void Function()? onTap;
  const CustomConatainer({
    this.onTap,
    this.color,
    this.padHor,
    this.padVer,
    this.icons,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.black,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          padding: const EdgeInsets.symmetric(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: padHor!,
              vertical: padVer!,
            ),
            child: Column(
              children: [
                Icon(
                  icons,
                  size: 100,
                ),
                Text(
                  text!.toUpperCase(),
                  style: TextStyles.text25Black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
