import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../resources/sqllitedb.dart';


class PostDb extends DBInterface{

    factory PostDb(){
      if(_this == null) _this = PostDb._getInstance();
      return _this;
    }

    /// Make only one instance of this class.
    static PostDb _this;

    PostDb._getInstance(): super();

    @override
    get name => 'testing.db';

    @override
    get version => 1;

    @override
    Future onCreate(Database db, int version) async {

      await db.execute("""
     CREATE TABLE PostDb(
              id INTEGER PRIMARY KEY
              , title TEXT
              ,content TEXT
              ,excerpt TEXT
              ,author TEXT
              ,featuredMedia INTEGER
              ,featuredMediaUrl TEXT
              ,link TEXT
              ,categories BLOB
              )
     """);
  //    DateTime date;
  // Guid title;
  // Content content;
  // Content excerpt;
  // String author;
  // int featuredMedia;
  // dynamic featuredMediaUrl;
  // String link;
  // List<int> categories;
    }


    void save(String table){
      saveRec(table);
    }


    Future<List<Map>> getPostDbs() async {
      return await this.rawQuery('SELECT * FROM PostDb');
    }
}