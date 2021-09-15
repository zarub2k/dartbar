import 'dart:io';

void main(List<String> args) {
  print('### Stream example ###');
  simpleStream();
}

void simpleStream() {
  var directory = Directory.current;
  directory.list().listen((entity) {
    if (entity is File) {
      print(entity.path);
    }
  });
}