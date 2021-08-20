void main(List<String> args) {
  print('### Exception examples ###');
  finallyFn();
}

void finallyFn() {
  try {
    simulator();
  } catch (e) {
    print('Inside catch');
  } finally {
    print('Inside finally');
  }
}

void catchRethrowFn() {
  try {
    rethrowFn();
  } catch (e) {
    print('Caught inside catchRethrowFn()');
  }
}

void rethrowFn() {
  try {
    dynamic value = true;
    print(value++);
  } catch (e) {
    print('Something weird happened');
    rethrow;
  }
}

void catchStackTrace() {
  try {
    dynamic value = true;
    print(value++);
  } catch (e, s) {
    print(e);
    print('#############');
    print(s);
  }
}

void catchMore() {
  try {
    throwKnown();
  } on FormatException {
    print('On exception handler');
  } on Exception catch (e) {
    print('On with catch exception handler');
    print(e);
  } catch (e) {
    print('Catch handler');
  }
}

void catchFn() {
  print('catchFn()');
  // Model 1
  try {
    simulator();
  } on NoSuchMethodError {
    print('error on model 1');
  }

  // Model 2
  try {
    simulator();
  } on NoSuchMethodError catch (e) {
    print('error on model 2');
    print(e);
  }

  // Model 3
  try {
    simulator();
  } catch (e) {
    print('error on model 3');
    print(e);
  }
}

void simulator() {
  dynamic value = true;
  print(value++);
}

void tryCatchOn() {
  try {
    throwKnown();
  } on FormatException catch (e) {
    print('tryCatchOn()');
    print(e);
  }
}

void tryCatch() {
  try {
    throwKnown();
  } catch (e) {
    print(e);
  }
}

void simpleTry() {
  try {
    throwKnown();
  } on FormatException {
    print('Inside format exception');
  }
}

void throwKnown() {
  throw FormatException('Formatting is not correct');
}

void throwUnknown() {
  throw 'Throwing unknown';
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