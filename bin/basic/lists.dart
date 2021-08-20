void main(List<String> arugments) {
  constList();
}

void forList() {
  var values = [1, 2, 3];
  var newValues = [
    ...values,
    for(var i in values) i * 2
  ];
  print(newValues);
}

void ifList() {
  var values = [1, 2];
  var newValues = [...values, if(values.length > 2) 0];
  print(newValues);
}

void spreadList() {
  var values = [1, 2, 3];
  var latestValues = [5, ...values, 6];
  print(latestValues);

  //null aware
  var initials;
  var names = ['Tham', 'Roger', ...?initials];
  print(names);
}

void constList() {
  var values = const [1, 2, 3];
  print(values);

  values[3] = 4;
  print(values);
}

void simpleList() {
  var names = ['Tham', 'Roger', 'Joko'];
  printList(names);

  names.add('Nadal');
  names[0] = 'Feddy';
  printList(names);
}

void printList(List<String> names) {
  print('First element: ${names[0]}');
  names.forEach((name) {
    print(name);
  });
  print(names.length);
}