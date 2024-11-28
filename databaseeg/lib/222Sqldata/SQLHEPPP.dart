import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;
class sqlhlpp{
static Future<sql.Database> Mylogin()async{
  return sql.openDatabase("My login.db", version: 1,onCreate: (sql.Database database,int version,)async
  {
    await createTable(database);

    });

}

  static Future<void> createTable(sql.Database database)async {
 await database.execute("""CREATE TABLE login(
 id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 username TEXT,
 email TEXT,
 password TEXT,
 createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
 )""");
  }

static Future<int>addnewuser(String username,String email, String password)async {
  final db = await sqlhlpp.Mylogin();
  final data = {"username": username, "email": email,"password":password};
  final id = await db.insert(
      "login", data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
  return id;
}
static Future<List<Map>> checkuser(String email) async{
  final db= await sqlhlpp.Mylogin();
  final data= await db.rawQuery( "SELECT * FROM login WHERE email='$email'");
  if(data.isNotEmpty)
    {
      return data;
    }
  return data;
}
static Future<List<Map<String,dynamic>>>checklogin( String email, String password)async{
  final db=await sqlhlpp.Mylogin();
  final data=await db.rawQuery("SELECT * FROM login WHERE email=='$email' & password=='$password'");
  if(data.isNotEmpty)
    {
      return data;
    }
  else
    {
      return data;
    }
}

static Future<List<Map<String, dynamic>>>viewlogins()async{
  final db= await sqlhlpp.Mylogin();
  return db.query("SELECT * FROM login");
}


}