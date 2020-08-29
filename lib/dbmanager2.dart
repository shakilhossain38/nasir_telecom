import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbStudentManager {
  Database _database;

  Future openDb() async {
    if (_database == null) {
      _database = await openDatabase(
          join(await getDatabasesPath(), "ss2.db"),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE student2(id2 INTEGER PRIMARY KEY autoincrement, name2 TEXT, course3 TEXT)",

        );
      } );
    }
  }

  Future<int> insertStudent(Student2 student2) async {
    await openDb();
    return await _database.insert('student2', student2.toMap());
  }

  Future<List<Student2>> getStudentList() async {
    await openDb();
    final List<Map<String, dynamic>> maps = await _database.query('student2');
    return List.generate(maps.length, (i) {
      return Student2(
          id2: maps[i]['id2'], name2: maps[i]['name2'], course3: maps[i]['course3']);
    });
  }


  Future<void> deleteStudent(int id2) async {
    await openDb();
    await _database.delete(
        'student2',
        where: "id2 = ?", whereArgs: [id2]
    );
  }

}

class Student2{
  int id2;
  String name2;
  String course3;
  Student2({@required this.name2, @required this.course3,this.id2});
  Map<String, dynamic> toMap() {
    return {'name2': name2, 'course3': course3};
  }
}