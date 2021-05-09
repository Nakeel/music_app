import 'package:flutter/material.dart';
import 'package:music_app/constants/custom_theme.dart';
import 'package:music_app/screen/player/main_player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      themeMode: ThemeMode.system,
      home: MainPlayerScreen(),
    );
  }
}

