class Plant {
  int typeId;
  DateTime plantDate;
  int areaId;
  double bioConst;
  
  Plant(this.typeId, this.plantDate, this.bioConst);

  int plantedDays() {
    return DateTime.now().difference(plantDate).inDays;
  }

}
