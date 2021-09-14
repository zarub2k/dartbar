void main(List<String> args) {
  print('### Comparable example ###');

  var line1 = Line(12);
  var line2 = Line(11);
  var diff = line1.compareTo(line2);
  print((diff < 0) ? 'Line1 is shorter' : 'Line2 is shorter');

  var lines = [Line(40), Line(25), Line(50), Line(20)];
  lines.sort();
  print(lines);

  var people = [Person('Tham'), Person('Roger'), Person('Nadal')];
  people.sort((p1, p2) => p1.name.compareTo(p2.name));
  print(people);
}

class Line implements Comparable<Line> {
  int length;
  Line(this.length);

  @override
  int compareTo(Line other) {
    return length - other.length;
  }

  @override
  String toString() {
    return 'Line{length: $length}';
  }
}

class Person {
  String name;
  Person(this.name);

  @override
  String toString() {
    return 'Person($name)';
  }
}