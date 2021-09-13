void main(List<String> args) {
  print('### Callable classes ###');

  var callable = CallableClass();
  var result = callable('Hello', 'Tham');
  print(result);
}

class CallableClass {
  String call(String a, String b) => '$a, $b!';
}