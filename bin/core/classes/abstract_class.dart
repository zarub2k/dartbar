void main(List<String> args) {
  print('### Abstract classes ###');
  var implObject = ImplClass();
  implObject.sayHello('Tham');
}

abstract class AbstractClass {
  void sayHello(String name);
}

class ImplClass extends AbstractClass {
  @override
  void sayHello(String name) {
    print('Hello $name');
  }
}