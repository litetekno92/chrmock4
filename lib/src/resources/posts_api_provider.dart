import 'dart:async';
import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'repository.dart';

import '../models/embedpost.dart';
import 'package:http/http.dart' show Client;

const PER_PAGE = 20;
const baseUrl = "http://chroniques.sn";
//const baseUrl = "https://lemedia.sn";

class PostsApiProvider implements Source {
  // int category;
  // int page;
  // PostsApiProvider({this.category, this.page});
  
  // Future <List<Post>> fetchDataCat({ int category, int page}) async {
  //   Client client = Client();
  //   var url;
  //   var posts = new List<Post>();
  //   category == 1
  //       ? url = baseUrl +
  //           "/wp-json/wp/v2/posts?_embed&per_page=" +
  //           PER_PAGE.toString() +
  //           "&?page=" +
  //           page.toString()
  //       : url = baseUrl +
  //           "/wp-json/wp/v2/posts?categories=" +
  //           category.toString() +
  //           "&?page=" +
  //           page.toString() +
  //           "&_embed&per_page=" +
  //           PER_PAGE.toString();
  //   // return http.get(url,headers: {"Accept": "application/json"});
  //   final response = await client.get(url);
  //   final parsedJson = json.decode(response.body);
  //   posts = parsedJson.map((model) => Post.fromJson(model)).toList();
  //   return posts;
  // }

  @override
  Future<Post> fetchItem(int id) {
    // TODO: implement fetchItem
    return null;
  }

  @override
  Future<List<Post>> fetchDataCat(int category, int page) async {
      Client client = Client();
    var url;
    var posts = new List<Post>();
    category == 1
        ? url = baseUrl +
            "/wp-json/wp/v2/posts?_embed&per_page=" +
            PER_PAGE.toString() +
            "&?page=" +
            page.toString()
        : url = baseUrl +
            "/wp-json/wp/v2/posts?categories=" +
            category.toString() +
            "&?page=" +
            page.toString() +
            "&_embed&per_page=" +
            PER_PAGE.toString();
    final response = await client.get(url);
    final parsedJson = json.decode(response.body);
    posts = parsedJson.map((model) => Post.fromJson(model)).toList();
    return posts;
  }

 
}
