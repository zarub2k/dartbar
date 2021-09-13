void main(List<String> args) {
  print('### Comparable example ###');

  var line1 = Line(12);
  var line2 = Line(11);
  var diff = line1.compareTo(line2);
  print((diff < 0) ? 'Line1 is shorter' : 'Line2 is shorter');
}

class Line implements Comparable<Line> {
  int length;
  Line(this.length);

  @override
  int compareTo(Line other) {
    return length - other.length;
  }
}