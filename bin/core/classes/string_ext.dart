extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }

  String sayHello() {
    return 'Hello $this';
  }
}