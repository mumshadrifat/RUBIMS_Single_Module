import 'package:hive/hive.dart';

@HiveType(typeId: 0)

class Inspection {
  @HiveField(0,defaultValue: 0)
  Map superMap;
  @HiveField(1)
  Map subMap;
  @HiveField(2)
  Map nonMap;

  Inspection(this.superMap, this.subMap, this.nonMap);
}