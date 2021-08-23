void main(List<String> args) {
  print('### Classes example ###');
  // var calculator = Calculator();
  // print(calculator.add(4, 5));

  var player1 = Player('Roger', 'Swiz');
  var player2 = Player.european('Nadal');

  print('Player 1 --> $player1');
  print('Player 2 --> $player2');
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

  //Standard way of constructor
  // Player(String name, String country) {
  //   this.name = name;
  //   this.country = country;
  // }

  //with syntactic sugar
  Player(this.name, this.country);

  //Named constructor
  Player.european(String name)
    : name = name,
    country = 'Germany';

  //Redirecting constructor
  Player.asian(String name) : this(name, 'India');
}

//Constant constructor example
class ImmutablePoint {
  static final ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;
  const ImmutablePoint(this.x, this.y);
}

//Factory class example
class Logger {
  final String name;

  static final Map<String, Logger> _cache = {};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);
}