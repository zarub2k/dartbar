import 'dart:convert';

void main(List<String> args) {
  print('### Encoder example ###');
  encode();
}

void encode() {
  var products = [
    { 'name': 'Orange', 'price': 5 },
    { 'name': 'Apple', 'price': 8 }
  ];

  var json = jsonEncode(products);
  print(json);
}

void decode() {
  var json = '''
  [
    {"name": "Tham", "game": "Tennis"},
    {"name": "Sachin", "game": "Cricket"},
    {"name": "Messi", "game": "Football"}
  ]
  ''';

 List persons = jsonDecode(json);
  persons.forEach((person) {
    print(person['name']);
  });
}