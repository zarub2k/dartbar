void main(List<String> args) {
  print('### Generic methods ###');

  var numbers = <int>[4, 3, 5];
  print('First number is ${first(numbers)}');

  var names = <String> ['Joko', 'Roger', 'Rafa'];
  print('First name is ${first(names)}');
}

T first<T>(List<T> names) {
  T first = names.first;
  return first;
}