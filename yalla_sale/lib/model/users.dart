import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class UsData{
  String table = 'Uaccount';
  static Database _db;
 bool islogin=false;
  Future<Database> get db async{
    if(_db == null){
      _db = await initialDB();
      return _db;
    }else{
      return _db;
    }
  }

  initialDB() async{
    io.Directory docDirect = await getApplicationDocumentsDirectory();
    String path = join(docDirect.path,'Uaccount.db');
    var mydb = await openDatabase(path,version: 1,onCreate: (Database db,int version) async{
      await db.execute('CREATE TABLE "$table" ("Uname" Text UNIQUE NOT NULL,"Pass"	TEXT NOT NULL,"Gender" TEXT,"Uemail" TEXT UNIQUE NOT NULL)');
      print('$table Table Created');
    });
    return mydb;
  }

  Future<int> create(Map<String,dynamic> data) async{
    var dbclient = await db;
    int insert = await dbclient.insert(table, data);
    //await dbclient.close();
    return insert;
  }
  void find(String Uemail,String pass)async{
    var dbclient=await db;
    List<Map> list = await dbclient.rawQuery('SELECT * FROM $table');
<<<<<<< HEAD
    //print(list);
=======
    //bool val=false;

    print(list);
>>>>>>> 0b88579b875d3483964d6c8326f295770793aeab
    for(int i=0;i<list.length;i++)
      {
        if(list[i]['Uemail']==Uemail && list[i]['Pass']==pass)
          {
<<<<<<< HEAD
            print("aaa");
            return true;
=======
            islogin =true;
            print(islogin);
>>>>>>> 0b88579b875d3483964d6c8326f295770793aeab
          }
      }
    //return islogin;
  }


  }