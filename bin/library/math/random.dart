import 'dart:math';

void main(List<String> args) {
  print('### Random API ###');
  random();
}

void random() {
  var random = Random();
  print(random.nextInt(15));
  print(random.nextInt(5));
  print(random.nextDouble());
}