import 'package:flutter/material.dart';
import 'package:game/screen/Home_Page.dart';
import 'package:game/screen/game.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home_page(),
        'game':(context)=>Game_page(),
      },
    ),
  );
}
