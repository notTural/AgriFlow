import 'dart:math';

class Plant {
  int typeId;
  DateTime plantDate;
  int areaId;
  double hectar;
  double bioConst;
  String level;
  String hour;
  double rndn;
  Plant(this.typeId, this.plantDate, this.bioConst, double d) {
    var rnd = new Random();
    rndn = rnd.nextDouble();
    level = (1 + rnd.nextInt(3)).toString();
    hour = (1 + rnd.nextInt(5)).toString();
  }

  int plantedDays() {
    return DateTime.now().difference(plantDate).inDays;
  }
}
