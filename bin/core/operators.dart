void main(List<String> args) {
  print('### Operators ###');
  arithmeticOp(6, 3);
}

void arithmeticOp(int a, int b) {
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  print('-($a + $b) = -${a + b}');
  print('$a ~/ $b = ${a ~/ b}');
  print('$a % $b = ${a % b}');
}