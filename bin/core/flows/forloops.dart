void main(List<String> args) {
  print('### For loops ###');
  forIn();
}

void simpleFor() {
  var values = [1, 2, 3, 4, 5];
  for(var i = 0; i < values.length; i++) {
    print(values[i]);
  }
}

void forEach() {
  var values = [1, 2, 3, 4, 5];
  values.forEach((value) => print(value));
}

void forIn() {
  var values = [1, 2, 3, 4, 5];
  for (var value in values) {
    print(value);
  }
}