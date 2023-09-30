enum Operation {
  add,
  subtract,
  multiply,
  divide;

  String symbol() {
    switch (this) {
      case Operation.add:
        return '+';
      case Operation.subtract:
        return '-';
      case Operation.multiply:
        return '*';
      case Operation.divide:
        return '/';
    }
  }

  num applyLocally(num a, num b) {
    switch (this) {
      case Operation.add:
        return a + b;
      case Operation.subtract:
        return a - b;
      case Operation.multiply:
        return a * b;
      case Operation.divide:
        return a / b;
    }
  }
}
