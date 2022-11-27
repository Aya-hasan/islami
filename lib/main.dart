import 'package:flutter/material.dart';
import 'package:islami/home/HomeScreen.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/suradetails/suradetails.dart';

void main() {
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        initialRoute:HomeScreen.routName ,
        routes:{
          HomeScreen.routName:(_)=> HomeScreen(),
          suradetailsScreen.routName:(_)=>suradetailsScreen(),
        },

        theme:MyTheme.lightTheme
    );
  }
}