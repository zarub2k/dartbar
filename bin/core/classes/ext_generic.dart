void main(List<String> args) {
  print('### Generic extension ###');

  List<int> numbers = List<int>.generate(6, (index) => index++);
  List<int> secondNumbers = List<int>.generate(3, (index) => index++);
  // print(numbers - secondNumbers);
}

extension ListExt<T> on List<T> {
  List<T> operator -() => reversed.toList();
}