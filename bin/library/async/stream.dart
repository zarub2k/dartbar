import 'dart:io';

void main(List<String> args) {
  print('### Stream example ###');
  withoutStream();
}

void simpleStream() {
  var current = Directory.current;
  current.list().listen((entity) {
    if (entity is File) {
      print(entity.path);
    }
  });
}

void withoutStream() {
  var current = Directory.current;
  current.listSync().forEach((entity) {
    if (entity is File) {
      print(entity.path);
    }
  });
}