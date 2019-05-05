import 'dart:async';
import 'dart:io';

import '../models/embedpost.dart';
import 'repository.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class PostsDbProvider implements Source, Cache {
  Database db;

  PostsDbProvider() {
    init();
  }

  // Todo - store and fetch top ids
  Future<List<int>> fetchTopIds() {
    return null;
  }

  void init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "chroniques.db");
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database newDb, int version) {
        newDb.execute(
          """CREATE TABLE Post(
            id INTEGER PRIMARY KEY
            , title TEXT
            ,content TEXT
            ,excerpt TEXT
            ,author TEXT
            ,featuredMedia INTEGER
            ,featuredMediaUrl TEXT
            ,link TEXT
            ,categories BLOB
        )"""
        );
      },
    );
  }

  Future<Post> fetchItem(int id) async {
    final maps = await db.query(
      "Posts",
      columns: null,
      where: "id = ?",
      whereArgs: [id],
    );

    if (maps.length > 0) {
      return Post.fromDb(maps.first);
    }

    return null;
  }

  Future<int> addItem(Post item) {
    return db.insert(
      "Posts",
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<int> clear() {
    return db.delete("Posts");
  }
}

final newsDbProvider = PostsDbProvider();

class PostDbProvider {
  static final PostDbProvider _instance = new PostDbProvider.internal();
  factory PostDbProvider() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  PostDbProvider.internal();

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "chroniques.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        """CREATE TABLE Post(
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
             """
    );
  }

  Future<int> savePost(Post post) async {
    var dbClient = await db;
    int res = await dbClient.insert("Post", post.toMap());
    return res;
  }

  Future<List<Post>> getPost() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Post');
    List<Post> posts = new List();
    for (int i = 0; i < list.length; i++) {
      var post =
          new Post(
           
      //      id": list[i]["id"], 
        date: list[i]["date"], 
        title: list[i]["title"], 
       content: list[i]["content"], 
        excerpt:list[i][" excerpt"], 
       author: list[i]["author"], 
        featuredMedia: list[i]["featuredMedia"], 
        featuredMediaUrl: list[i]["featuredMediaUrl"], 
        link: list[i][" link"], 
        categories: list[i]["categories"], 
          );
      post.setPostId(list[i]["id"]);
      posts.add(post);
    }
    print(posts.length);
    return posts;
  }

  Future<int> deletePosts(Post post) async {
    var dbClient = await db;

    int res =
        await dbClient.rawDelete('DELETE FROM Post WHERE id = ?', [post.id]);
    return res;
  }

  Future<bool> update(Post post) async {
    var dbClient = await db;
    int res =   await dbClient.update("Post", post.toMap(),
        where: "id = ?", whereArgs: <int>[post.id]);
    return res > 0 ? true : false;
  }
}

PostDbProvider postDbProvider = PostDbProvider();