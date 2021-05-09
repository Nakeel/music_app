import 'package:flutter/material.dart';

ThemeData lightThemeData(){
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // primarySwatch: Colors.grey,

      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xffffffff)

  );
}

// title: TextStyle(color: Color(0xff40bf7a)),
// subtitle: TextStyle(color: Colors.white),
// subhead: TextStyle(color: Color(0xff40bf7a))),
// appBarTheme: AppBarTheme(color: Color(0xff1f655d)));
//
// ThemeData lightTheme = ThemeData.light().copyWith(
// primaryColor: Color(0xfff5f5f5),
// accentColor: Color(0xff40bf7a),
// textTheme: TextTheme(
// title: TextStyle(color: Colors.black54),
// subtitle: TextStyle(color: Colors.grey),
// subhead: TextStyle(color: Colors.white)),
// appBarTheme: AppBarTheme(
// color: Color(0xff1f655d),

ThemeData darkThemeData(){
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,

      primaryColor: Color(0xff00000),
    scaffoldBackgroundColor: Color(0xff26242e)

  );
}