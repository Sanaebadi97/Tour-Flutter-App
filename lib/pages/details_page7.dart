import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatefulWidget {
  String movie_title,movie_pic,movie_desc,movie_rate;

  DetailsPage(this.movie_title, this.movie_pic,this.movie_desc,this.movie_rate);


  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          widget.movie_pic,
          fit: BoxFit.cover,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 400.0,
                    height: 400.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage(widget.movie_pic),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 20.0,
                            offset: new Offset(0.0, 10.0))
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        widget.movie_title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: 'Sans-Semi-Bold'),
                      )),
                      Text(
                       '${widget.movie_rate} / 10',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Sans-Semi-Bold'),
                      )
                    ],
                  ),
                ),
                Text(widget.movie_desc,
                    style:
                        new TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                Padding(padding: const EdgeInsets.all(10.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      width: 150.0,
                      height: 60.0,
                      alignment: Alignment.center,
                      child: Text(
                        'Rate Movie',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 20.0),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFF1b1e44)),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFF1b1e44)),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xFF1b1e44)),
                        )),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
