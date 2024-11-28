import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;
class sqlhelper{
  static Future<sql.Database>Mydata()
  async{
    return sql.openDatabase("Mydata.db",version: 1,onCreate: (sql.Database database,int version,)async{
      await  createTable(database);
    });
  }
  static Future<void> createTable(sql.Database database)async{
     await database.execute("""CREATE TABLE notes(
     id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
   title TEXT,
   subtitle TEXT,
   createAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP )""");
  }
  static Future<int>createnotes(String title,String subtitle)async {
    final db = await sqlhelper.Mydata();
    final data = {"title": title, "subtitle": subtitle
    };
    final id = await db.insert(
        "notes", data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>>readnotes()async{
   final db= await sqlhelper.Mydata();
   return db.query('notes',orderBy: 'id');
  }
  static Future<int> updatenotes(int id,String newtitle,String newsubtitle) async{

    final db= await sqlhelper.Mydata();
    final data={
      "title":newtitle,
      "subtitle":newsubtitle,
      "createAt": DateTime.now().toString()
    };
    final result= await db.update("notes", data,where: "id=?", whereArgs: [id]);
    return result;


  }
  static Future<void> deletenote(int id)async{
    final db= await sqlhelper.Mydata();

    try{
      db.delete("notes",where: "id=?", whereArgs: [id]);
    }
    catch(err){
      debugPrint("something want to wrong");
    }
  }


}
