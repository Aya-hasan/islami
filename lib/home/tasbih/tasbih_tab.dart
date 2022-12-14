import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:provider/provider.dart';
import '../../providers/Settingsprovider.dart';


class tasbihTap extends StatefulWidget{
  @override
  State<tasbihTap> createState() => _tasbihTapState();
}

class _tasbihTapState extends State<tasbihTap> {

  double angle=0.0;
  int counter =0;
  int currentIndex=0;
  List<String>azkar=[
    "سبحان الله",
    "الحمدلله",
    "لااله الاالله",
    "الله أكبر"
  ];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Settingsprovider>(context);
    var mediaQuery=MediaQuery.of(context).size;
    return Container(
width: double.infinity,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: mediaQuery.height*0.36,
            child: Stack(children: [
              Positioned(child: Image.asset(
                provider.isDarkMode()?'assets/images/head_of_seb7a_dark.png'

                :'assets/images/head_seb7a.png',
                height: mediaQuery.height*0.1,),
                left: mediaQuery.width*0.44,),
             Positioned(
               top:55,
               left: mediaQuery.width*0.25,
               child: GestureDetector (
                 onTap:(){
                  onClick();
                 },
                 child: Transform.rotate(
                  angle:angle ,
                  child: Image.asset(
                    provider.isDarkMode()?'assets/images/body_of_seb7a_dark.png'
                    :'assets/images/body_of_seb7a.png',
                    height:mediaQuery.height*0.28 ,),
                ),
               ),
             ),
            ],),
          ),
          Text('عدد التسبيحات',style: Theme.of(context).textTheme.headline4,),
          SizedBox(height: 30,),
Container(
  alignment: Alignment.center,
  width: 78,
  height: 80,
  decoration: BoxDecoration(color:provider.isDarkMode()?Theme.of(context).primaryColor:
  Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(25)),
  child: Text(counter.toString(),
    style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold ),),
),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:100 ),
            child: Container(
              alignment: Alignment.center,

              decoration: BoxDecoration(color:Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(azkar[currentIndex],
                  style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold,
                      color:provider.isDarkMode()?Colors.black:Colors.white ),),
              ),
            ),
          ),
        ],) ,
    );

  }
  onClick(){
    setState(() {
      angle++;
      counter++;
      if(counter==34){
        currentIndex++;
        counter=0;}
      if(currentIndex>azkar.length-1){
        currentIndex=0;
      }
    });
  }
}