void main(List<String> arguments) {
  shiftValues();
  // intValue();
  // doubleValue();
  // numValue();
}

void intValue() {
  print('############## int value');
  var age = 10;
  print('Age $age');
}

void doubleValue() {
  print('############## double value');
  var pi = 3.14;
  print('PI $pi');
}

void numValue() {
  print('############## num value');
  num i = 1;
  i += 2.5;
  i += 2;
  print('Value $i');
}

void shiftValues() {
  print('############## shift value');
  print('bit ${3.bitLength}');
  print('<< value ${3 << 1}');
  print('>> value ${3 >> 1}');
}