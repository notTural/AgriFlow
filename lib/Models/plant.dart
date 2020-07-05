import 'dart:math';

class Plant {
  int typeId;
  DateTime plantDate;
  int areaId;
  double hectar;
  double bioConst;
  String level;
  String hour;
<<<<<<< HEAD
  double rndn;
  Plant(this.typeId, this.plantDate, this.bioConst) {
=======

  Plant(this.typeId, this.plantDate, this.hectar, this.bioConst) {
>>>>>>> 3e247d6bea9b4f3a1676b74be9dac29929536ce2
    var rnd = new Random();
    rndn = rnd.nextDouble();
    level = (1 + rnd.nextInt(3)).toString();
    hour = (1 + rnd.nextInt(5)).toString();
  }

  int plantedDays() {
    return DateTime.now().difference(plantDate).inDays;
  }
}
