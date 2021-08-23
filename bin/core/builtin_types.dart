void main(List<String> args) {
  print('### Built-in Types ###');

  // numbers();
  strings();
  // boolean();
}

void numbers() {
  var count = 0;
  print('++Count ${++count}');

  var result = 1 / 2;
  print(result);

  num a = 1;
  print(a);
}

void strings() {
  var name = 'Roger';
  print('Name here is $name');

  var multiline = '''
    This is a long text. This has multiple
    lines and we can have any number of lines.
  ''';

  var json = '''
  {
    'name': 'Roger',
    'sports': 'Tennis'
  }
  ''';
  print(multiline);
  print(json);
}

void boolean() {
  var canMove = false;
  print('Value of canMove: $canMove');
  print('Opposite of canMove: ${!canMove}');

  if (canMove) {
    print('Given value is true');
  } else {
    print('Given value is false');
  }
}