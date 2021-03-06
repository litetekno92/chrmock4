import '../models/category.dart';
import '../resources/color.dart';
import 'package:flutter/material.dart';
import '../models/embedpost.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:intl/date_symbol_data_local.dart';

class SinglePost extends StatelessWidget {
  final Post post;
  SinglePost({Key key, @required var this.post}) : super(key: key);

  _launchURL(String url) async {
    // const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
// await     initializeDateFormatting("fr_FR", null);
initializeDateFormatting();
    var    dateFormat = new DateFormat.yMMMMd('fr_FR');
   var     timeFormat = new DateFormat.Hms('fr_FR');
    return new Scaffold(
        appBar: new AppBar(
          title: Html(
              data: (post.title.rendered).toString(),
              defaultTextStyle:
                  TextStyle(fontSize: 20.0, decoration: TextDecoration.none)),
          //          new Text(post.title.rendered),
        ),
        body: new Padding(
          padding: EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ListView(
              children: <Widget>[
                // new FadeInImage.memoryNetwork(
                //   placeholder: kTransparentImage,
                //   image: post.featuredMedia == 0
                //       ? 'images/placeholder.png'
                //       : post.featuredMediaUrl,
                // ),
                Container(
                  alignment: Alignment.center ,
                    margin: EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(0.5)),
                        color: CustomColor.mredcol,
                        border: Border.all(
                            color: Colors.white, style: BorderStyle.solid)),
                    child: Text(
                        findCategoryById(post.categories[0]) != null
                            ? findCategoryById(post.categories[0]).title
                            : 'A la Une',
                        style: TextStyle(
                          
                          fontSize: 20.0,
                          color: Colors.white,
                        ))),
                ListTile(
                  title: Html(
                      data: (post.title.rendered).toString(),
                      defaultTextStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                ),
                ListTile(
                  title: Text(
                      'Par ' +
                          post.author +
                          ", le " +
                          //                formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d])
                          //                DateFormat('yyyy-MM-dd – kk:mm')
                          DateFormat('EEE, d MMM yyyy à  kk:mm')
                              .format(post.date)
                              .toString(),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                ),
                FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: post.featuredMediaUrl ??
                      'https://picsum.photos/250?image=9',
                ),
                new Padding(
                    padding: EdgeInsets.all(16.0),
                    child:
                        // new Text(
                        //     post.content.rendered
                        //         .replaceAll(new RegExp(r'<[^>]*>'), ''),
                        //     style: TextStyle(color: Colors.white))),
                        Html(
                            data: (post.content.rendered).toString(),
                            defaultTextStyle: TextStyle(
                                color: Colors.white,
                                //         fontFamily: 'NotoKufiArabic',
                                fontSize: 16.0,
                                decoration: TextDecoration.none))),
                Divider(color: Colors.white24),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: new Icon(
                        Icons.share,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        //    print("Pressed");
                        RenderBox box = context.findRenderObject();
                        Share.share(post.link,
                            sharePositionOrigin:
                                box.localToGlobal(Offset.zero) & box.size);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: new Icon(
                        Icons.bookmark,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        print("Pressed");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: new Icon(
                        Icons.launch,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        _launchURL(post.link);
                        //              print("Pressed");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: new Icon(
                        Icons.font_download,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        //             _launchURL(post.link);
                        print("Pressed");
                      },
                    ),
                  ),
                ])
              ],
            ),
          ),
        ));
  }
}

class CustomPopupMenu {
  CustomPopupMenu({this.title, this.icon});

  String title;
  IconData icon;
}

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'Home', icon: Icons.home),
  CustomPopupMenu(title: 'Bookmarks', icon: Icons.bookmark),
  CustomPopupMenu(title: 'Settings', icon: Icons.settings),
];
