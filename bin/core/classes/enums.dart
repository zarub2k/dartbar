void main(List<String> args) {
  print('### Enums ###');
  // var redColor = Color.red;
  // print(redColor.index);
  // print(Color.values);
  // print(Color.blue.runtimeType);

  enumInSwitch(Color.green);
}

enum Color {
  red,
  green,
  blue
}

void enumInSwitch(Color color) {
  switch (color) {
    case Color.red:
      print('Red color');
      break;

    case Color.green:
      print('Green color');
      break;

    case Color.blue:
      print('Blue color');
      break;
  }
}