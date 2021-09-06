// import 'string_ext.dart' hide StringExt;

void main(List<String> args) {
  print('### Extension methods');

  //calling extension method
  print('5'.parseInt());
  print('Tham'.sayHello());

  //applying extension explicitly
  print(StringExt('55').sayHello());
}

extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }

  String sayHello() {
    return 'Hello $this';
  }
}