void main(List<String> args) {
  print('### Operator methods ###');
  var v1 = Vector(2, 3);
  var v2 = Vector(2, 4);
  print('v1 is lesser than v2 ${v1 < v2}');
}

class Vector {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator + (Vector v) => Vector(x + v.x, y + v.y);
  Vector operator - (Vector v) => Vector(x - v.x, y - v.y);

  bool operator < (Vector v) => (x < v.x ) && (y < v.y);
}