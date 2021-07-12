import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class NoteDbProvider {
  static final _databaseName = "my_notes.db";
  static final _databaseVersion = 1;
  static final table = "notes";
  static final cId = "_id";
  static final cTitle = "title";
  static final cDate = "date";
  static final cContent = "content";
  static final cPath = "image_path";

  static Database? _database;

  Future<Database?> get database async{
    if(_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);

    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $table (
      $cId INTEGER PRIMARY KEY AUTO_INCREMENT,
      $cTitle TEXT NOT NULL,
      $cDate TEXT,
      $cContent TEXT,
      $cPath TEXT
    )
    ''');
  }

//Insérer dans la table Notes
  Future<int> insert(Map<String, dynamic> data) async {
    Database? db = await database;

    return await db!.insert(table, data);
  }

//Lire toute la table Notes
  Future<List<Map<String, dynamic>>> query() async {
    Database? db = await database;
    return db!.query(table);
  }

//Mettre à jour un élément de Notes
  Future<int> update(Map<String, dynamic> data) async {
    Database? db = await database;
    int id = data[cId];
    return db!.update(table, data, where: '$cId = ?',whereArgs: [id]);
  }

//Supprimer élément de Notes
  Future<int> delete(int id) async {
    Database? db = await database;
    return db!.delete(table, where: '$cId = ?',whereArgs: [id]);
  }
}