void main(List<String> arguments) {
  duplicateSet();
}

void duplicateSet() {
  var fruits = {
    'Banana',
    'Apple',
    'Mango'
  };
  printSet(fruits);

  //Add a duplicate value
  var result = fruits.add('Banana');
  print('Result: $result');
  printSet(fruits);
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
  printSet(allSeasons);
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
  printSet(summerFruits);
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
  printSet(moreFruits);
}

void emptySet() {
  var names = <String>{};
  names.add('Tham');
  print(names.single);

  var moreNames = {
    'Roger',
    'Joko'
  };
  names.addAll(moreNames);
  printSet(names);

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

  printSet(fruits);
}

void printSet(Set set) {
  print('Set >> $set \nlength >> ${set.length}');
}