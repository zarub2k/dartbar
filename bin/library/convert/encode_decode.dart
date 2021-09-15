import 'dart:convert';

void main(List<String> args) {
  print('### Encoder example ###');
  decode();
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