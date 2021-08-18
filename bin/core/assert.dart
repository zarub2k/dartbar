void main(List<String> args) {
  print('### Assert example ###');
  assertFn();
}

void assertFn() {
  var value = 10;
  assert(value != 0);
  print('Post assert');
}