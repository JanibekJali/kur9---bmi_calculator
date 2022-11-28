import 'package:flutter/material.dart';

class CustomConatainer extends StatelessWidget {
  final IconData? icons;
  final double? size;
  final String? text;
  const CustomConatainer({
    this.icons,
    this.size,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 70,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      padding: const EdgeInsets.symmetric(),

      child: Column(
        children: [
          Icon(
            icons,
            size: size ?? 90,
          ),
          Text(
            text!.toUpperCase(),
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
