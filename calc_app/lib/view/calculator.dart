import 'dart:math';

import 'package:calc_app/model/operation.dart';
import 'package:calc_app/service/rpc.dart';
import 'package:calc_app/view/visor.dart';
import 'package:flutter/cupertino.dart';

import 'keyboard.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  List<num> operands = [0];
  Operation? operation;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: min(width, 300),
      child: Column(
        children: [
          Visor(operands, operation),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          Keyboard(onDelete, onOperation, onNumber, onEquals)
        ],
      ),
    );
  }

  void onNumber(int number) {
    setState(() {
      if (operands.length == 2) {
        operands[1] = operands[1] * 10 + number;
        return;
      }

      if (operands.length == 1 && operation == null) {
        operands[0] = operands[0] * 10 + number;
        return;
      }

      operands.add(number);
    });
  }

  void onOperation(Operation operation) {
    setState(() {
      this.operation = operation;
    });
  }

  void onDelete() {
    setState(() {
      if (operands.length == 2) {
        onDeleteDigit(1);
        return;
      }

      if (operands.length == 1 && operation != null) {
        operation = null;
        return;
      }

      if (operands.length == 1) {
        onDeleteDigit(0);
      }
    });
  }

  void onEquals() async {
    if (operation == null) {
      return;
    }

    final result = switch (operation!) {
      Operation.add => CalculatorService().sum(operands[0], operands[1]),
      Operation.subtract => CalculatorService().sub(operands[0], operands[1]),
      Operation.multiply => CalculatorService().mul(operands[0], operands[1]),
      Operation.divide => CalculatorService().div(operands[0], operands[1])
    };

    result.then((value) => {
          setState(() {
            operands[0] = value;
            operands.removeAt(1);
            operation = null;
          })
        });
  }

  void onDeleteDigit(int operandIndex) {
    if (operands[operandIndex] < 10) {
      if (operandIndex == 0) {
        operands[0] = 0;
        return;
      }
      operands.removeAt(operandIndex);
      return;
    }

    operands[operandIndex] = (operands[operandIndex] / 10).floor();
  }
}
