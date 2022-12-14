import 'package:flutter/material.dart';
import 'package:islami/home/hadith/Hadith.dart';

import 'package:islami/hadith_details/hadith_details.dart';

class Hadith_title_widget extends StatelessWidget{
    Hadith hadith;
    Hadith_title_widget(this.hadith);
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
Navigator.pushNamed(context, HadithDetailsScreen.routName,arguments: hadith);
     },
     child: Container(alignment: Alignment.center,
       child:Text(hadith.title,style: Theme.of(context).textTheme.headline4) ,),
   );
  }
}