import 'package:test/test.dart';
void main(List<String> args) {
  print('### Hello world tests ###');
  
  test('Simple hello world test', () {
    var name = 'Tham';
    expect('Tham', equals(name));
  });

  test('Validate the size of a list', () {
    var values = [1, 2, 3];
    expect(2, equals(values.length),
      reason: 'Length is not matched'
    );
  });
}