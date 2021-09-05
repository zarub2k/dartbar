void main(List<String> args) {
  print('### Extending a class ###');
  printTv(Television());
  printTv(SmartTelevision());
}

class Television {
  void turnOn() {
    print('Television is turned on');
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    print('turnOn smart capabilities');
  }
}

void printTv(Television tv) => tv.turnOn();