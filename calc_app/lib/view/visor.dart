import 'package:flutter/cupertino.dart';

import '../model/operation.dart';

class Visor extends StatelessWidget {
  Visor(List<num> numOperands, this.operation, {Key? key})
      : operands = numOperands.map((e) => e.toInt()).toList(),
        super(key: key);

  final List<int> operands;
  final Operation? operation;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.darkBackgroundGray,
      height: 50,
      alignment: Alignment.topRight,
      padding: const EdgeInsets.all(10),
      child: Text(
        operandString(),
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }

  String operandString() {
    String res = operands[0].toString();

    if (operation == null) {
      return res;
    }

    res += " ${operation!.symbol()} ";

    if (operands.length == 2) {
      return res + operands[1].toString();
    }

    return res;
  }
}
