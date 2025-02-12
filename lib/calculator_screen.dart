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
  var firstValue = '';
  var secondValue = '';
  var result = '';
  var operation = '';

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
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Text(
                                  screenValue,
                                  style: TextStyle(
                                      fontSize: 56,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
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
                              if (screenValue.isNotEmpty &&
                                  screenValue != '0') {
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
                            operation = '%';
                            setState(() {
                              firstValue = screenValue;
                              screenValue = '';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "÷",
                          color: AppColors.orange,
                          onTap: () {
                            operation = '/';
                            setState(() {
                              firstValue = screenValue;
                              screenValue = '';
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
                            operation = '*';
                            setState(() {
                              firstValue = screenValue;
                              screenValue = '';
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
                        CalculatorButton(
                          text: "-",
                          color: AppColors.orange,
                          onTap: () {
                            operation = '-';
                            setState(() {
                              firstValue = screenValue;
                              screenValue = '';
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
                            operation = '+';
                            setState(() {
                              firstValue = screenValue;
                              screenValue = '';
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
                          onTap: addDecimalPoint,
                        ),
                        const SizedBox(width: 10),
                        CalculatorButton(
                          text: "=",
                          color: AppColors.orange,
                          onTap: () {
                            operatorIn();
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

  void operatorIn() {
    setState(() {
      secondValue = screenValue;
      switch (operation) {
        case '+':
          addOperation();
          break;
        case '*':
          multiplicationOperator();
          break;
        case '-':
          subtractionOperator();
          break;
        case '/':
          divisionOperator();
          break;
        case '%':
          percentOperator();
      }
      screenValue = result;
    });
  }

  void percentOperator() {
    result = ((double.tryParse(firstValue) ?? 0) *
            (double.tryParse(secondValue) ?? 0) /
            100)
        .toString();
  }

  void multiplicationOperator() {
    result = ((double.tryParse(firstValue) ?? 0) *
            (double.tryParse(secondValue) ?? 0))
        .toString();
  }

  void subtractionOperator() {
    result = ((double.tryParse(firstValue) ?? 0) -
            (double.tryParse(secondValue) ?? 0))
        .toString();
  }

  void divisionOperator() {
    double denominator = double.tryParse(secondValue) ?? 0;
    if (denominator == 0) {
      result = 'Ошибка';
    } else {
      result = ((double.tryParse(firstValue) ?? 0) / denominator).toString();
    }
  }

  void addOperation() {
    result = ((double.tryParse(firstValue) ?? 0) +
            (double.tryParse(secondValue) ?? 0))
        .toString();
  }

  void contentZero() {
    screenValue = screenValue == '0' ? '' : screenValue;
  }

  void addDecimalPoint() {
    setState(() {
      if (screenValue.isEmpty) {
        screenValue = '0.'; // Добавляем "0." если строка пуста
      } else if (!screenValue.contains('.')) {
        screenValue += '.'; // Добавляем точку, если её ещё нет
      }
    });
  }
}
