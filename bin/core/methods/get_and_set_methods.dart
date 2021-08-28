void main(List<String> args) {
  print('### Getter and setter methods ###');
  var rect = Rectangle(2, 4, 4, 4);
  print(rect);

  var person = Person('Joko', DateTime(1980, 7, 12));
  print('Age of the person: ${person.age}');
}

class Person {
  String name;
  DateTime birth;
  Person(this.name, this.birth);

  int get age => DateTime.now().year - birth.year;
}

class Rectangle {
  double left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);

  //Calculated properties
  double get right => left + width;
  set right(double value) => left = value - width;
}