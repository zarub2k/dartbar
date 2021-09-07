void main(List<String> args) {
  print('### Functions ###');
  anonymousFn();
}

void anonymousFn() {
  var names = ['Tham', 'Roger', 'Joko'];
  names.forEach((name) => print(upper(name)));
}

var upper = (String value) => value.toUpperCase();

void firstClassObjects() {
  var values = List.generate(5, (index) => index + 1);
  values.forEach(arrowPrint);
  // values.forEach((value) { arrowPrint(value);});
}

void arrowPrint(int value) {
  var arrows = '';
  var count = 0;
  do {
    arrows += '>';
    count++;
  } while (count < value);

  print(arrows);
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