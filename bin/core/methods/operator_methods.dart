void main(List<String> args) {
  print('### Operator methods ###');
}

class Vector {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator + (Vector v) => Vector(x + v.x, y + v.y);
  Vector operator - (Vector v) => Vector(x - v.x, y - v.y);
}