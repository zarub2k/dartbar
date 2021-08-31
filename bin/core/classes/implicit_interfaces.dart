void main(List<String> args) {
  print('### Implicit interfaces ###');

  print(greetBob(Person('Tham')));
  print(greetBob(Imposter()));
  print(greetBob(TennisPlayer('Roger')));
}

class TennisPlayer extends Person {
  TennisPlayer(String name): super(name);

  @override
  String greet(String who) => 'Hey $who, I am $_name';
}

//Implementation is changed inside greet method
class Imposter implements Person {
  @override
  String greet(String who) => 'Hi $who, Do you who am I?';

  @override
  String get _name => '';
}

class Person {
  final String _name;
  Person(this._name);

  String greet(String who) => 'Hello $who, I am $_name';
}

String greetBob(Person person) => person.greet('Bob');