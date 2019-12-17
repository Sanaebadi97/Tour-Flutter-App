import 'dart:math';
import 'package:abosoltan_app/custom/custom_icons.dart';
import 'package:abosoltan_app/data/data.dart';
import 'package:abosoltan_app/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _HomePageState extends State<HomePage> {
  var currentPage = images.length - 1.0;

  var title;
  var desc;
  var image;
  var rate;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Colors.white,
            Colors.white,
          ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 50.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("IMDB",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontFamily: "Calibre-Semibold",
                          letterSpacing: 1.0,
                        )),
                    IconButton(
                      icon: Icon(
                        Icons.pages,
                        color: Colors.black87,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                        alignment: Alignment.center,
                        child: Text('War ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.5,
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            shape: BoxShape.rectangle,
                            color: Colors.blueAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                        alignment: Alignment.center,
                        child: Text('Romance ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.5,
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            shape: BoxShape.rectangle,
                            color: Colors.black12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                        alignment: Alignment.center,
                        child: Text('Comedy ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.5,
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            shape: BoxShape.rectangle,
                            color: Colors.black12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12 , right: 12 , top: 8,bottom: 8),
                        alignment: Alignment.center,
                        child: Text('Drum ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.5,
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            shape: BoxShape.rectangle,
                            color: Colors.black12),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  for (var i = 0; i < images.length; i++) {
                    title = titles[i];
                    desc = descs[i];
                    image = images[i];
                    rate = rates[i];
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(title, image, desc, rate)),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    CardScrollWidget(currentPage),
                    Positioned.fill(
                      child: PageView.builder(
                        itemCount: images.length,
                        controller: controller,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return Container();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(titles[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("See More",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
