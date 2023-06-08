import 'package:flutter/material.dart';
class AppTheme {
  String name;
  LinearGradient background;
  Color lightTile;
  Color darkTile;
  Color moveHint;
  Color checkHint;
  Color latestMove;
  Color border;

  AppTheme({
    this.name,
    this.background,
    this.lightTile = const Color(0x88F7A6FD),
    this.darkTile = const Color(0xff262626),
    this.moveHint = const Color(0xdd9ec45c),
    this.latestMove = const Color(0xfff8f7cc),
    this.checkHint = const Color(0x88ff0000),
    this.border = const Color(0x88ea06fa),
  });
}

List<AppTheme> get themeList {
  var themeList = <AppTheme>[
    AppTheme(
      name: 'Green',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffb2b621),
          Color(0xff7d8bc5),
        ],
      ),
    ),
    ];
  return themeList;
}
