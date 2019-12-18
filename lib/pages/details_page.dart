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
                            fontFamily: "SourceSansPro-Regular"))
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
                  Text('Maldives \n tour',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 1.1,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "SourceSansPro-Regular")),
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
                                    fontFamily: "SourceSansPro-Regular"))
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
                                    fontFamily: "SourceSansPro-Regular"))
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
                          fontFamily: "SourceSansPro-Regular")),
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
                                    fontFamily: "SourceSansPro-Regular"))
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
                            fontFamily: "SourceSansPro-Regular"))
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
                  topLeft: Radius.circular(40)
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Align(
                      alignment: Alignment(0.8, -0.1),
                      heightFactor: 0.10,
                      child: FloatingActionButton(
                        elevation: 5,
                        child: Icon(
                          Icons.near_me,
                          size: 30,
                          color: Color(0xFF0097a7)
                        ),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ));
        });
  }
}
