import 'dart:async';

import '../models/embedpost.dart';

import 'posts_api_provider.dart';
import 'posts_db_provider.dart';


class Repository {
  List<Source> sources = <Source>[
   // postDbProvider,
    PostsApiProvider(),
  ];
  List<Cache> caches = <Cache>[
    newsDbProvider,
  ];

  // Iterate over sources when dbprovider
  // get fetchTopIds implemented
  // Future<List<int>> fetchTopIds() {
  //   return sources[1].fetchTopIds();
  // }

  Future<Post> fetchItem(int id) async {
    Post post;
    var source;

    for (source in sources) {
      post = await source.fetchItem(id);
      if (post != null) {
        break;
      }
    }

    for (var cache in caches) {
      if (cache != source) {
        cache.addItem(post);
      }
    }

    return post;
  }

  clearCache() async {
    for (var cache in caches) {
      await cache.clear();
    }
  }
}

abstract class Source {
//  Future<List<int>> fetchTopIds();
  Future<Post> fetchItem(int id);
}

abstract class Cache {
  Future<int> addItem(Post post);
  Future<int> clear();
}
