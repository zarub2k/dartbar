void main(List<String> args) {
  print('### Mixins examples ###');

  var musician = Musician('Joko');
  print(musician);

  var maestro = Maestro('Roger');
  print('Maestro canPlayPiano ${maestro.canPlayPiano}');
  print('Maestro canCompose ${maestro.canCompose}');
}

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canCompose) {
      print('Composing music');
    }
  }
}

class Musician with Musical {
  String name;
  Musician(this.name) {
    canPlayPiano = true;
  }
}

class Maestro with Musical {
  String name;
  Maestro(this.name) {
    canPlayPiano = true;
    canCompose = true;
  }
}

//Enforce restriction on type
class Court {

}

mixin Player on Court {
  bool isFit = false;
}

class Tennis extends Court with Player {
  String name;
  Tennis(this.name) {
    isFit = true;
  }
}