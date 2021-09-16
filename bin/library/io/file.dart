import 'dart:io';

Future<void> main(List<String> args) async {
  print('### File API ###');
  await readFile();
}

Future<void> readFile() async {
  var file = File('README.md');
  var lines = await file.readAsLines();
  print(lines.length);

  var content = await file.readAsString();
  print(content);
}