

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyTheme{
  static const Color primaryColor=  Color(0xFFB7935F);
  static ThemeData lightTheme =ThemeData(
    canvasColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
        elevation: 0,
titleTextStyle: TextStyle( color: Colors.black,
  fontWeight: FontWeight.w600,fontSize: 30,),
        color:Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black)
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
        showSelectedLabels: true,
      showUnselectedLabels: false,

        ),
    primaryColor: primaryColor,

  );
}