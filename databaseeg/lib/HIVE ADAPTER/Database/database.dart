import 'package:hive/hive.dart';

import '../Model/Usermodel.dart';

class DBfunction{
  DBfunction.internal();
  static DBfunction instance=DBfunction.internal();

  factory DBfunction()
  {
    return instance;

  }
  Future<void> userSignUp(User user)async
  {
   final db=await Hive.openBox<User>('users') ;
   db.put(user.id, user);
  }
}