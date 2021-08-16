void main(List<String> arguments) {
  forSet();
}

void forSet() {
  var fruits = {
    'Banana',
    'Apple',
    'Mango'
  };

  var allSeasons = {
    ...fruits,
    for (var i in fruits) '##$i##'
  };
  print(allSeasons);
}

void ifSet() {
  var fruits = {
    'Banana',
    'Apple',
    'Mango'
  };

  var isSummer = false;

  var summerFruits = {
    ...fruits,
    if (isSummer) 'Watermelon'
  };
  print(summerFruits);
}

void spreadSet() {
  var fruits = {
    'Banana',
    'Apple',
    'Mango'
  };

  var moreFruits = {
    'Guava',
    ...fruits
  };
  print(moreFruits);
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