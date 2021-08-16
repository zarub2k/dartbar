void main(List<String> args) {
  print('### Functions ###');
  positionalWithDefault('Thamizh');

  // var result = isOdd(value: 3);
  // print(result);

  // namedWithDefault(value: 11);
  // positionalParams('Tham', 42);
  // positionalParams('Thamizh', 42, 'Mr.');
}

void positionalWithDefault(String name, [String? title = 'Mr.']) {
  print('Welcome $title $name');
}

void positionalParams(String name, int age, [String? title]) {
  print('Welcome ${(title != null) ? title : ''}$name');
}

//named with default value
void namedWithDefault({ int value = 0}) {
  print('Given value $value is > 10 = ${ value > 10 }');
}
//named function
bool isOdd({required int value}) {
  return (value % 2 != 0);
}

//arrow function
int sub(int a,  int b) => a - b;

int add(int a, int b) {
  return a + b;
}