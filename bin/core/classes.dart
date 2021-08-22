void main(List<String> args) {
  print('### Classes example ###');
  var calculator = Calculator();
  print(calculator.add(4, 5));
}

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  double divide(int a, int b) {
    return a / b;
  }
}

class Player {
  String? name;
  String? country;

  Player(String name, String country) {
    this.name = name;
    this.country = country;
  }
}