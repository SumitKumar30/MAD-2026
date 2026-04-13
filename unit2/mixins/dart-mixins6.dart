class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist on Performer {
  void playGuitar() => print('Playing the Guitar!');

  @override
  void perform() {
    super.perform();
    playGuitar();
  }
}

mixin Drummer on Performer {
  void playDrums() => print('Playing the Drums!');

  @override
  void perform() {
    super.perform();
    playDrums();
  }
}

class Musician extends Performer with Guitarist, Drummer {}

void main() {
  Musician().perform();
}
