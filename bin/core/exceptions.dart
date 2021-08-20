void main(List<String> args) {
  print('### Exception examples ###');
  tryCatchOn();
}

void tryCatchOn() {
  try {
    exception();
  } on FormatException catch (e) {
    print('tryCatchOn()');
    print(e);
  }
}

void tryCatch() {
  try {
    exception();
  } catch (e) {
    print(e);
  }
}

void simpleTry() {
  try {
    exception();
  } on FormatException {
    print('Inside format exception');
  }
}

void exception() {
  throw FormatException('Formatting is not correct');
}

void anythingAsEx() {
  throw 'Throwing any object';
}

double divide(int a, int b) {
  var result;
  try {
    result = a / b;
    if (result == double.infinity) {
      throw Exception('Number can\'t be divided by zero');
    }
  } on Exception catch (e) {
    print('Exception is caught');
    print(e.toString());
  } catch (e) {
    print('Inside general catch');
  }

  return result;
}