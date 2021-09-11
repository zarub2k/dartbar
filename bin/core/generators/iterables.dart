void main(List<String> args) {
  print('### Sync iterables ###');

  var numbers = naturalsTo(10);
  print(numbers);
}

Iterable<int> naturalsTo(int n) sync* {
  var k = 0;
  while (k < n) {
    yield ++k;
  }
}