import 'package:flutter/material.dart';
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
      body: Stack(fit: StackFit.expand, children: [

        Image.asset(
          "assets/images/pic2.jpeg",
          fit: BoxFit.cover,
        )
        ,
        Padding(
          padding: const EdgeInsets.only(bottom: 650,right: 8,left: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),


      ]),
    );
  }
}
