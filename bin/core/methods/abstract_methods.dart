void main(List<String> args) {
  print('### Abstract methods ###');
  var joko = Player();
  print('Can play? ${joko.canPlay()}');
}

abstract class Person {
  bool canPlay();
}

class Player extends Person {
  @override
  bool canPlay() {
    return true;
  }
}