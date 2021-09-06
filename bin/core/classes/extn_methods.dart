void main(List<String> args) {
  print('### Extension methods');
  print('5'.parseInt());
  print('Tham'.sayHello());
}

extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }

  String sayHello() {
    return 'Hello $this';
  }
}