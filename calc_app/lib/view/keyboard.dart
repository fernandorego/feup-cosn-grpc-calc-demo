import 'package:flutter/material.dart';
import '../model/operation.dart';

class Keyboard extends StatelessWidget {
  const Keyboard(this.onDelete, this.onOperation, this.onNumber, this.onEquals,
      {Key? key})
      : super(key: key);

  final Function() onDelete;
  final Function(Operation) onOperation;
  final Function(int) onNumber;
  final Function() onEquals;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...numberButtons(7, 9),
          ElevatedButton(
            child: const Text('÷'),
            onPressed: () => onOperation(Operation.divide),
          ),
        ]),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...numberButtons(4, 6),
          ElevatedButton(
            child: const Text('×'),
            onPressed: () => onOperation(Operation.multiply),
          ),
        ]),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...numberButtons(1, 3),
          ElevatedButton(
            child: const Text('-'),
            onPressed: () => onOperation(Operation.subtract),
          ),
        ]),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...numberButtons(0, 0),
          ElevatedButton(
            onPressed: onDelete,
            child: const Text('←'),
          ),
          ElevatedButton(
            onPressed: onEquals,
            child: const Text('='),
          ),
          ElevatedButton(
            child: const Text('+'),
            onPressed: () => onOperation(Operation.add),
          ),
        ]),
      ],
    );
  }

  List<Widget> numberButtons(int min, int max) {
    List<Widget> buttons = [];
    for (int i = min; i <= max; i++) {
      buttons.add(ElevatedButton(
        child: Text(i.toString()),
        onPressed: () => onNumber(i),
      ));
    }
    return buttons;
  }
}
