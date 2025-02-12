import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int flex;
  final Color color;
  final Function()? onTap;

  const CalculatorButton(
      {required this.text,
      this.onTap,
      this.flex = 1,
      super.key,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color,
          ),
          height: 77,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 21, color: Colors.white),
            ),
          )),
    ));
  }
}
