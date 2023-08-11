import 'dart:io';

import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../model/ins_model.dart';
import '../../model/inspection_post_model.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();
  static Database? _database;
  RxInt insId = 0.obs;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDb();
    return _database;
  }

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }


  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE inspection(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, STRUCTID TEXT, INSP_DATE TEXT)',
    );

    await db.execute(
      '''CREATE TABLE inspObsIndviStrTmps(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       COMP_ID TEXT,
       COMP_SLNO TEXT,
       SPALLING TEXT,
       REMARK TEXT,
       SETTLEMENT TEXT,
       TILTING TEXT,
       CRACKS TEXT,
       MISSECTION TEXT,
       MOVEMENT TEXT,
       REBAR TEXT,
       SCOURING TEXT,
       OBSTRUCT TEXT,
       ABRASION TEXT,
       DISTORTION TEXT,
       COLLISION TEXT,
       DAMAGED TEXT,
       EROSION TEXT,
       PATCHED TEXT,
       DEFORMATION TEXT,
       ACCUMULATION TEXT,
       EFFLORESCENCE TEXT,
       CRACK_OF_DECK TEXT,
       DELAMINATION TEXT,
       insId INTEGER,
       compoName TEXT
          
          )''',
    );
    await db.execute(
      '''CREATE TABLE visualObservation(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
       embankment_b TEXT, 
       embankment_f TEXT,
       protective_b TEXT,
       protective_f TEXT,
       pavement_b TEXT,
       pavement_f TEXT,
       wearing_deck TEXT,
       expansion_deck TEXT,
       checker_deck TEXT,
       wheelGuard_l TEXT,
       wheelGuard_r TEXT,
       railbarpost_l TEXT,
       railbarpost_r TEXT,
       guideTraffic_b TEXT,
       guideTraffic_f TEXT,
       surfacewall_b2 TEXT,
       surfacewall_f2 TEXT,
       guideTraffic_b2 TEXT,
       guideTraffic_f2 TEXT,
       railingWheel_l2 TEXT,
       railingWheel_r2 TEXT,
       steelmember_deck2 TEXT,
       deckslab2 TEXT,
       surfaceAbut_b2 TEXT,
       surfaceAbut_f2 TEXT,
       waterflow2 TEXT,
       obstru_waterway_u2 TEXT,
       obstru_waterway_d2 TEXT,
       insId INTEGER
       
       )''',
    );
  }

  Future<int?> insertInsModel(InsModel insModel) async {
    Database? db = await instance.database;
    var result = await db?.insert('inspection', insModel.toJson());
    print("ins_id==>${result}");
    insId.value = result!;
    print("inserted inspection");
    return result;
  }

  Future<int?> insertQ6(InspObsIndviStrTmps inspObsIndviStrTmps) async {
    Database? db = await instance.database;

    var result =
        await db?.insert('inspObsIndviStrTmps', inspObsIndviStrTmps.toJson());
    print(" id_q6==>${result}");
    print("inserted q6");
    return result;
  }
  Future<int?> visualInsert(VisualObservation visualObservation) async {
    Database? db = await instance.database;
    var result = await db?.insert('visualObservation', visualObservation.toJson());
    print("visual id==>${result}");
    insId.value = result!;
    print("Visual Id");
    return result;
  }

  Future<List<Map>> insQuery() async {
    Database? db = await instance.database;

    List<Map> result = await db!.rawQuery("SELECT * FROM inspection");

    result.forEach((row) => print(row));
    print(result);
    return result;
  }
  Future<List<Map>> selectInspection(int insId) async {
    Database? db = await instance.database;

    List<Map> result = await db!.rawQuery("SELECT * FROM inspection WHERE id=$insId");

    result.forEach((row) => print(row));
    print(result);
    return result;
  }

  Future<List<Map>> newQuery(int insId) async {
    Database? db = await instance.database;

    List<Map> result = await db!
        .rawQuery("SELECT * FROM inspObsIndviStrTmps WHERE insId=$insId");

   // result.forEach((row) => print(row));

    return result;
  }
  Future<List<Map>> visaulQuery(int insId) async {
    Database? db = await instance.database;

    List<Map> result = await db!
        .rawQuery("SELECT * FROM visualObservation WHERE insId=$insId");

    result.forEach((row) => print(row));

    return result;
  }
}
