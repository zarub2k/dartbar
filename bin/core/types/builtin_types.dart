void main(List<String> args) {
  print('### Built-in Types ###');
  // numbers();
  // strings();
  boolean();
}

void numbers() {
  var count = 0; //int
  print('++Count ${++count}');
  print('Type of count: ${count.runtimeType}');

  var result = 1 / 2; //double
  print(result);
  print('Type of result: ${result.runtimeType}');

  num a = 1.0; //both int and double
  print('Type of a: ${a.runtimeType}');
}

void strings() {
  var name = 'Roger';
  print('Name here is $name');

  var multiline = '''
    This is a long text. This has multiple
    lines and we can have any number of lines.
  ''';
  print(multiline);

  var json = '''
  {
    'name': 'Roger',
    'sports': 'Tennis'
  }
  ''';
  print(json);
}

void boolean() {
  var canMove = true;
  print('Value of canMove: $canMove');
  print('Opposite of canMove: ${!canMove}');

  if (canMove) {
    print('Given value is true');
  } else {
    print('Given value is false');
  }
}