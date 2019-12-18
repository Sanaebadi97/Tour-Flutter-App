import 'package:abosoltan_app/custom/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Colors.black54,
      body: InkWell(
        onDoubleTap: () {
          //bottom sheet

          _showBottomSheet();
        },
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            "assets/images/pic7.jpeg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 650, right: 8, left: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white70,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white70,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 420, right: 60, left: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0x66e0f7fa),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                width: 85,
                height: 35,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white70,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    Text('36',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Sans-Regular"))
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 190, left: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Maldives \n Tour',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 1.1,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Sans-Regular")),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.schedule,
                                color: Colors.white70,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text('30 DAYS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: "Sans-Regular"))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.outlined_flag,
                                color: Colors.white70,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text('862 KM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: "Sans-Regular"))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                      'Islam was introduced to the Maldivian\n archipelago inthe 12th century which \n was consolidated as a sultanate,\n developing strong commercial \n and cultural  ',
                      style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Sans-Regular")),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 100),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0x44e0f7fa),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        width: 85,
                        height: 35,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white70,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text('295',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "Sans-Regular"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 50),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0x99e0f7fa),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                width: 85,
                height: 35,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white70,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    Text('207',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Sans-Regular"))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/pic7.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/pic9.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/pic11.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/pic12.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/pic13.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Align(
                      alignment: Alignment(0.8, -0.1),
                      heightFactor: 0.10,
                      child: FloatingActionButton(
                        elevation: 5,
                        child: Icon(Icons.near_me,
                            size: 30, color: Color(0xFF0097a7)),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 14, right: 12, left: 12),
                    child: Text('Maldives Tour',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 1.1,
                            color: Colors.black87,
                            fontSize: 30,
                            fontFamily: "Sans-Semi-Bold")),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 14, right: 12, left: 12),
                    child: Text(
                        'Islam was introduced to the Maldivian \narchipelago inthe 12th century which was\nconsolidated as a sultanate ',
                        style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            color: Colors.black26,
                            letterSpacing: 1,
                            height: 1.25,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Sans-Regular")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.chat_bubble,
                                color: Color(0xFF37474f),
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text('24',
                                style: TextStyle(
                                    color: Color(0xFF37474f),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "Sans-Regular"))
                          ]),
                        ),
                        Row(children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Color(0xFFdd2c00),
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                          Text('65',
                              style: TextStyle(
                                  color: Color(0xFF37474f),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "Sans-Regular"))
                        ]),
                        Row(children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.star_border,
                              color: Color(0xFF37474f),
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                          Text('17',
                              style: TextStyle(
                                  color: Color(0xFF37474f),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "Sans-Regular"))
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.whatshot,
                                color: Color(0xFF37474f),
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text('80',
                                style: TextStyle(
                                    color: Color(0xFF37474f),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "Sans-Regular"))
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/user1.png',
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/user2.png',
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/user3.png',
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Icon(
                                CustomIcons.option,
                                size: 10,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    color: Color(0xaaf5f5f5),
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,bottom: 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xFFb39ddb),
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFf3e5f5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 20),
                            child: Column(
                              children: <Widget>[
                                Text('From',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: "Sans-Regular")),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text('Beijing',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: "Sans-Regular")),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, right: 20),
                            child: Column(
                              children: <Widget>[
                                Text('To',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: "Sans-Regular")),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text('Maldives',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: "Sans-Regular")),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: RaisedButton(
                      color: Color(0xFF1565c0),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                          side: BorderSide(color: Color(0xFF1565c0))),
                      onPressed: () {},
                      child: Text('Commence The Tour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "Sans-Regular")),
                    ),
                  )
                ],
              ));
        });
  }
}
