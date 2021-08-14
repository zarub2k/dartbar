class Spacecraft {
  String name;
  DateTime? launchDate;

  //Constructor with syntactic sugar
  Spacecraft(this.name, this.launchDate);

  //Named constructor
  Spacecraft.unlaunched(String name) : this(name, null);
  
  void describe() {
    print('Spacecraft: $name');
    if (launchDate == null) {
      print('Spacecraft is not launched yet');
    } else {
      print('Spacecraft is launched on $launchDate');
    }
  }
}

void main(List<String> arguments) {
  var voyager1 = Spacecraft('Voyager I', DateTime(2021, 6, 12));
  voyager1.describe();
}