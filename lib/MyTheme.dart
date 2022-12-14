

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyTheme{
  static const  Color primaryColor=  Color(0xFFB7935F);
  static const Color darkprimary=  Color(0xFF141A2E);
  static const Color yello=  Color(0xFFFACC10);
  static ThemeData lightTheme =ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight:  Radius.circular(18),
      )) ,

    ),
    cardColor: Colors.white,
    accentColor: primaryColor,
    textTheme: TextTheme(
      headline6:TextStyle(fontSize: 22,color: Colors.black) ,
      headline4:TextStyle(fontSize: 28,color: Colors.black) ,
      subtitle2:TextStyle(fontSize: 14,color: Colors.black),
    ),
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
      backgroundColor:primaryColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
        showSelectedLabels: true,
      showUnselectedLabels: false,

        ),
    primaryColor: primaryColor,);
  static ThemeData darkTheme =ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor:darkprimary,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight:  Radius.circular(18),
      )) ,

    ),
    cardColor:darkprimary ,
    accentColor: yello,
    textTheme: TextTheme(
      headline6:TextStyle(fontSize: 22,color: Colors.white) ,
      headline4:TextStyle(fontSize: 28,color: Colors.white) ,
        subtitle2:TextStyle(fontSize: 14,color: Colors.white),
    ),
    canvasColor: darkprimary,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle( color: Colors.white,
          fontWeight: FontWeight.w600,fontSize: 30,),
        color:Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white)
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor:darkprimary,
      selectedItemColor:yello,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
selectedIconTheme:IconThemeData(size: 36,color:yello ) ,
      unselectedIconTheme: IconThemeData(size: 24,color:Colors.white) ,
      selectedLabelStyle:TextStyle(color: yello),

    ),
    primaryColor: darkprimary,);
}