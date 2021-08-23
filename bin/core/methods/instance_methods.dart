import 'dart:math';

void main(List<String> args) {
  print('### Simple methods ###');
  var p1 = Point(10, 10);
  var p2 = Point(20, 20);
  print(p1.distanceTo(p2));
}

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  double distanceTo(Point another) {
    var dx = x - another.x;
    var dy = y - another.y;
    
    return sqrt(dx * dx + dy * dy);
  }
}