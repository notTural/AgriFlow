import 'dart:math';

class Plant {
  int typeId;
  DateTime plantDate;
  int areaId;
  double bioConst;
  String level;
  String hour;

  Plant(this.typeId, this.plantDate, this.bioConst) {
    var rnd = new Random();

    level = (1 + rnd.nextInt(3)).toString();
    hour = (1 + rnd.nextInt(5)).toString();
  }

  int plantedDays() {
    return DateTime.now().difference(plantDate).inDays;
  }
}
