import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/fetchdatacat.dart';
import '../resources/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'main.dart';
// import 'user.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);
//  final User user;

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width * 0.85, //20.0,
      child: Drawer(
          child: new ListView(
        children: <Widget>[
          SizedBox(
              height: 100.0,
              child: DrawerHeader(
                margin: EdgeInsets.all(10.0),
                decoration: new BoxDecoration(color: CustomColor.mgreycol),

                //  padding: EdgeInsets.all(20.0),
                child: Column(children: [
                  Material(
                      // borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image.asset('images/chroniques-logo.png',
                              width: 180, height: 25))),
                  // Text('Chroniques.sn',
                  //     style: TextStyle(fontSize: 12.0, color: Colors.white)),
                  // Divider(
                  //   color: Colors.blueGrey,
                  // ),
                  //    Text('Rubriques', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ]),
              )),
          // new DrawerHeader(
          //   child: new Text("DRAWER HEADER.."),
          //   decoration: new BoxDecoration(color: Colors.orange),
          // ),
          CustomListTile(
              icon: categories[0].icon,
              text: categories[0].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[0].id, page: categories[0].page)));
              }),
          CustomListTile(
              icon: categories[1].icon,
              text: categories[1].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[1].id, page: categories[1].page)));
              }),
          CustomListTile(
              icon: categories[2].icon,
              text: categories[2].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[2].id, page: categories[2].page)));
              }),
          CustomListTile(
              icon: categories[3].icon,
              text: categories[3].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[3].id, page: categories[3].page)));
              }),
          CustomListTile(
              icon: categories[4].icon,
              text: categories[4].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[4].id, page: categories[4].page)));
              }),
          CustomListTile(
              icon: categories[5].icon,
              text: categories[5].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[5].id, page: categories[5].page)));
              }),
          CustomListTile(
              icon: categories[6].icon,
              text: categories[6].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[6].id, page: categories[6].page)));
              }),
          CustomListTile(
              icon: categories[7].icon,
              text: categories[7].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[7].id, page: categories[7].page)));
              }),
          CustomListTile(
              icon: categories[8].icon,
              text: categories[8].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[8].id, page: categories[8].page)));
              }),
          CustomListTile(
              icon: categories[9].icon,
              text: categories[9].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[9].id, page: categories[9].page)));
              }),
          CustomListTile(
              icon: categories[10].icon,
              text: categories[10].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[10].id,
                        page: categories[10].page)));
              }),
          CustomListTile(
              icon: categories[11].icon,
              text: categories[11].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[11].id,
                        page: categories[11].page)));
              }),
          CustomListTile(
              icon: categories[12].icon,
              text: categories[12].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[12].id,
                        page: categories[12].page)));
              }),
          CustomListTile(
              icon: categories[13].icon,
              text: categories[13].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[13].id,
                        page: categories[13].page)));
              }),
          CustomListTile(
              icon: categories[14].icon,
              text: categories[14].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[14].id,
                        page: categories[14].page)));
              }),
          CustomListTile(
              icon: categories[15].icon,
              text: categories[15].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[15].id,
                        page: categories[15].page)));
              }),
          CustomListTile(
              icon: categories[16].icon,
              text: categories[16].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[16].id,
                        page: categories[16].page)));
              }),
          CustomListTile(
              icon: categories[17].icon,
              text: categories[17].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[17].id,
                        page: categories[17].page)));
              }),
          CustomListTile(
              icon: categories[18].icon,
              text: categories[18].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[18].id,
                        page: categories[18].page)));
              }),
          CustomListTile(
              icon: categories[19].icon,
              text: categories[19].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[19].id,
                        page: categories[19].page)));
              }),
          CustomListTile(
              icon: categories[20].icon,
              text: categories[20].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[20].id,
                        page: categories[20].page)));
              }),
          CustomListTile(
              icon: categories[21].icon,
              text: categories[21].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[21].id,
                        page: categories[21].page)));
              }),
          CustomListTile(
              icon: categories[22].icon,
              text: categories[22].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[22].id,
                        page: categories[22].page)));
              }),
          CustomListTile(
              icon: categories[23].icon,
              text: categories[23].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[23].id,
                        page: categories[23].page)));
              }),
          CustomListTile(
              icon: categories[24].icon,
              text: categories[24].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[24].id,
                        page: categories[24].page)));
              }),
          CustomListTile(
              icon: categories[25].icon,
              text: categories[25].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[25].id,
                        page: categories[25].page)));
              }),
          CustomListTile(
              icon: categories[26].icon,
              text: categories[26].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[26].id,
                        page: categories[26].page)));
              }),
          CustomListTile(
              icon: categories[27].icon,
              text: categories[27].title,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FetchDataCat(
                        category: categories[27].id,
                        page: categories[27].page)));
              }),

          Divider(),
          CustomListTile(icon: Icons.person, text: 'PROFILE', onTap: () => {}),
          CustomListTile(
              icon: Icons.settings, text: 'PARAMÈTRES', onTap: () => {}),
          CustomListTile(
              icon: Icons.notifications,
              text: 'NOTIFICATIONS',
              onTap: () => {}),
        ],
      )),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  CustomListTile({this.icon, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: Container(
            decoration: BoxDecoration(
                // border: Border(
                //     bottom: BorderSide(
                //   color: Colors.grey.shade400,
                //   width: 2.0,
                // )),
                ),
            child: InkWell(
              splashColor: CustomColor.mredcol,
              // When the user taps the button, show a snackbar
              onTap: onTap,
              child: Container(
                  height: 18.0,
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          //       Icon(icon, color: Theme.of(context).primaryColor,),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(text, style: TextStyle(fontSize: 10.0)),
                          )
                        ]),
                        Icon(Icons.arrow_right),
                      ]))),
            )));
  }
}
