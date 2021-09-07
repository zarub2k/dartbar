void main(List<String> args) {
  print('### break and continue ###');
  breakFn();
}

void continueFn() {
  var values = [1, 2, 3, 4, 5];
  var oddValues = [];
  for (var value in values) {
    if (value % 2 == 0) {
      continue;
    }

    oddValues.add(value);
  }

  print('Odd values $oddValues');
}

void breakFn() {
  //Find first odd number
  var values = [10, 2, 1, 2, 8, 7];
  var oddNumber = 0;
  for (var value in values) {
    print('For loop for $value');
    if (value % 2 != 0) {
      oddNumber = value;
      break;
    }
  }

  print('First odd number is $oddNumber');
}