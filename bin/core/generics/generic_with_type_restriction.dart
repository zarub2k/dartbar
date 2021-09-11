void main(List<String> args) {
  print('### Generic type restriction ###');

  var someClassFoo = Foo<SomeClass>();
  print(someClassFoo.toString());

  var extenderFoo = Foo<Extender>();
  print(extenderFoo.toString());

  var foo = Foo();
  print(foo.toString());
}

class SomeClass {}
class Foo<T extends SomeClass> {
  @override
  String toString() => 'Instance of Foo<$T>';
}

class Extender extends SomeClass {}