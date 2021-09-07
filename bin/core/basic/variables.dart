void main(List<String> arguments) {
  print('Variable examples');

  //late
  late String name;
  name = readName();
  print(name);

  //const
  const i = 10;
  // i = 11; // not allowed
  print(i);

  //final
  final j = 12;
  // j = 13; // not allowed
  print(j);
}

String readName() {
  return 'Tham';
}