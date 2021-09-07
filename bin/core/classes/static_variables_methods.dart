import 'dart:math';

void main(List<String> args) {
  print('### Static variables and methods ###');

  //static variable
  assert(Queue.initialCapacity == 16);

  //static methods
  var p1 = Point(2, 2);
  var p2 = Point(4, 4);
  var distance = Point.distanceBetween(p1, p2);
  print('Distance $distance');
}

class Queue {
  //Static variables are not initialized until they are used
  static const initialCapacity = 16;
}

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    
    return sqrt(dx * dx + dy * dy);
  }
}