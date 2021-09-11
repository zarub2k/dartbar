void main(List<String> args) {
  print('### Stream example ###');
  var aNumbers = asyncNumbers(15);
  print(aNumbers);
}

Stream<int> asyncNumbers(int n) async* {
  var k = 0;
  while ( k < n) {
    yield ++k;
  }
}