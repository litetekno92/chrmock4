
import '../src/models/category.dart';
import '../src/resources/color.dart';
import '../src/screens/fetchdatacat.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chroniques.sn',
      theme: ThemeData(
 
    brightness: Brightness.light,
    primaryColor: CustomColor.mbluecol,
    accentColor: CustomColor.mredcol,
      
    fontFamily: 'Oswald',
      
  
      ),
 
    home: FetchDataCat (category: categories[0].id, page: categories[0].page),
 
    );
  }
}

