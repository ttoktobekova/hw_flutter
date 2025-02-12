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
                        CalculatorButton(
                          text: "+/-",
                          color: AppColors.grey,
                          onTap: () {
                            setState(() {
                              if (screenValue.isNotEmpty) {
                                if (screenValue.startsWith('-')) {
                                  screenValue = screenValue.substring(1);
                                } else {
                                  screenValue = '-$screenValue';
                                }
                              }
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "%",
                          color: AppColors.grey,
                          onTap: () {
                            setState(() {
                              screenValue = '%';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "÷",
                          color: AppColors.orange,
                          onTap: () {
                            setState(() {
                              screenValue = '÷';
                            });
                          },
                        ),
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
                        CalculatorButton(
                          text: "8",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '8';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "9",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '9';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "×",
                          color: AppColors.orange,
                          onTap: () {
                            setState(() {
                              screenValue = '×';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "4",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '4';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "5",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '5';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "6",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '6';
                            });
                          },
                        ),
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
                        CalculatorButton(
                          text: "3",
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '3';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "+",
                          color: AppColors.orange,
                          onTap: () {
                            setState(() {
                              screenValue += '+';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "0",
                          flex: 2,
                          color: AppColors.grayClose,
                          onTap: () {
                            contentZero();
                            setState(() {
                              screenValue += '0';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: ".",
                          color: AppColors.grayClose,
                          onTap: () {
                            setState(() {
                              screenValue += '.';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "=",
                          color: AppColors.orange,
                          onTap: () {
                            setState(() {
                              screenValue += '=';
                            });
                          },
                        ),
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
