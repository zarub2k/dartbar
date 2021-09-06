import 'extn_methods.dart' as str;

void main(List<String> args) {
  print('### Import using prefix ###');
  print(str.StringExt('32').sayHello());
  print(StringExt('32').sayHello());
}

extension StringExt on String {
  String sayHello() {
    return 'Hello with $this';
  }
}