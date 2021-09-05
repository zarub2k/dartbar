void main(List<String> args) {
  print('### Extension methods');
  print('5'.parseInt());
}

extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }
}