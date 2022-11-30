import 'package:flutter/material.dart';

class CustomConatainer extends StatelessWidget {
  final IconData? icons;
  final double? padHor;
  final double? padVer;
  final String? text;
  const CustomConatainer({
    this.padHor,
    this.padVer,
    this.icons,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
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
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
