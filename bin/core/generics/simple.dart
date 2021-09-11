void main(List<String> args) {
  print('### Generic simple ###');
  simpleGeneric();
}

void simpleGeneric() {
  var values = <String>[];
  values.add('One');
  values.add('Two');
  // values.add(3);

  print(values);
}