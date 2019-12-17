import 'package:abosoltan_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF1b1e44), // navigation bar color
    statusBarColor: Color(0xFF2d3447), // status bar color
  ));

  runApp(MaterialApp(
    home: HomePage(),
    title: 'Sana Shop',
    debugShowCheckedModeBanner: false,
  ));
}