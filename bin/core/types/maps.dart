void main(List<String> args) {
  print('Maps example');
  forMap();
}

void forMap() {
  var places = {
    'Madurai', 'Trichy'
  };
  var famousPlaces = stringMap();
  var additionalPlaces = {
    ...famousPlaces,
    for (var i in places) '#K$i' : '$i'
  };
  print(additionalPlaces);
}

void ifMap() {
  var isFood = true;

  var famousPlaces = stringMap();
  var conditionalPlaces = {
    if (isFood) 'Madurai': 'Idly',
    ...famousPlaces
  };
  print(conditionalPlaces);
}

void spreadMap() {
  var famousPlaces = stringMap();
  var additionalPlaces = {
    'Kovai': 'Climate',
    ...famousPlaces
  };
  print(additionalPlaces);
}

void simpleMap() {
  var famousPlaces = stringMap();
  print(famousPlaces);
  print('Chennai is famous for \'${famousPlaces['Chennai']}\'');

  var cities = intMap();
  print(cities.length);
}

Map<String, String> stringMap() {
  return {
    'Chennai': 'Marina beach',
    'Tirunelveli': 'Halwa'
  };
}

Map<int, String> intMap() {
  var anotherIntMap = Map<int, String>();
  anotherIntMap[1] = 'Chennai';
  print(anotherIntMap);

  return {
    1: 'Chennai',
    2: 'Kovai',
    3: 'Trichy',
    4: 'Madurai'
  };
}