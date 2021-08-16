void main(List<String> args) {
  print('### Operators ###');
  incrementAndDecrement(2, 3);
}

void incrementAndDecrement(int a, int b) {
  print('$a++ = ${a++}');
  print(a);
  print('++$a = ${++a}');

  print('--$b = ${--b}');
  print('$b-- = ${b--}');
  print(b);
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