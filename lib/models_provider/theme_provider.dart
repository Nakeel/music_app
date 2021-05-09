import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

class ThemeProvider with ChangeNotifier{
    bool islightTheme;

    ThemeProvider({this.islightTheme});

    //the code below to manage status bar color
  getCurrentStatusNavigationBarColor(){
      if (islightTheme) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Color(0xffffffff),
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          )
        );
      }else  {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.light,
              systemNavigationBarColor: Color(0xff26242e),
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
            )
        );
      }
  }

  toggleThemeData() async {
    final settings =await Hive.openBox('settings');
    settings.put('isLightTheme', !islightTheme);
    islightTheme = !islightTheme;
    getCurrentStatusNavigationBarColor();
    notifyListeners();
  }

  ThemeData themeData(){
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: islightTheme ? Colors.grey : Colors.black,

    );
  }


}