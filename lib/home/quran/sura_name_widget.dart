import 'package:flutter/material.dart';
import 'package:islami/suradetails/suradetails.dart';

class sura_name_widget extends StatelessWidget{
  String title;
  int index;
  sura_name_widget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       Navigator.pushNamed(context,suradetailsScreen.routName,
           arguments:suradetailsArgs(index: index, name: title) );

     },
     child: Container(alignment: Alignment.center,
       child:Text(title,style: TextStyle(fontSize: 28)) ,),
   );
  }
}