import 'package:test/test.dart';

void main() {
  print('### Hello world tests ###');

  test('substring validator', () {
    var s = '123456';
    print(int.parse(s.substring(3, 3)) + 5);
  });
  
  test('Simple hello world test', () {
    var name = 'Tham';
    expect(name, equals('Tham'));
  });

  test('Validate the size of a list', () {
    var values = [1, 2, 3];
    expect(values.length, equals(3),
      reason: 'Length is not matched'
    );

    expect(values[1], equals(2));
  });

  group('List:', () {
    test('description', () {
      var values = [1, 2, 3];
      values.add(4);
      expect(values, equals([1, 2, 3, 4]));
    });
  });
}