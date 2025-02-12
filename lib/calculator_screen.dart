import 'package:flutter/material.dart';
import 'package:hw_flutter/colors/colors.dart';

import 'function/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var screenValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background_app,
        // appBar: AppBar(title: const Text("Calculator")),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 37),
            child: Column(children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 35),
                        child: Text(
                          screenValue,
                          style: TextStyle(
                              fontSize: 56,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalculatorButton(
                          text: "С",
                          color: AppColors.grey,
                          onTap: () {
                            setState(() {
                              screenValue = '0';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "+/-", color: AppColors.grey),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "%", color: AppColors.grey),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "÷", color: AppColors.orange),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "7",
                          color: AppColors.grayClose,
                          onTap: () {
                            setState(() {
                              contentZero();
                              screenValue += '7';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "8", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "9", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "×", color: AppColors.orange),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CalculatorButton(text: "4", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "5", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "6", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        CalculatorButton(text: "-", color: AppColors.orange),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "1",
                          color: AppColors.grayClose,
                          onTap: () {
                            setState(() {
                              contentZero();
                              screenValue += '1';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "2",
                          color: AppColors.grayClose,
                          onTap: () {
                            setState(() {
                              contentZero();
                              screenValue += '2';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        const CalculatorButton(
                            text: "3", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        const CalculatorButton(
                            text: "+", color: AppColors.orange),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const CalculatorButton(
                            text: "0", flex: 2, color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        const CalculatorButton(
                            text: ".", color: AppColors.grayClose),
                        const SizedBox(width: 10),
                        const CalculatorButton(
                            text: "=", color: AppColors.orange),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }

  void contentZero() {
    screenValue = screenValue == '0' ? '' : screenValue;
  }
}
