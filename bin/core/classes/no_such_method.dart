void main(List<String> args) {
  print('### No such methods ###');
  var cat = Cat();
  cat.meow();
}

class Cat {
  void meow() {
    print('Cat says meow');
  }
}