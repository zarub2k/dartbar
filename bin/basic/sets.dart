void main(List<String> arguments) {
  emptySet();
}

void emptySet() {
  var names = <String>{};
  names.add('Tham');
  print(names.single);

  var anotherNames = {
    'Roger',
    'Joko'
  };
  names.addAll(anotherNames);
  print(names);

  // The below will create map instead of set.
  // Always prefix the type argument for set
  // var names = {}
}

void basicSet() {
  var fruits = {
    'Banana',
    'Apple',
    'Mango'
  };

  print(fruits.length);
}