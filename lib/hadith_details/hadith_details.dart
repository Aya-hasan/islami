import 'package:flutter/material.dart';
import 'package:islami/home/hadith/Hadith.dart';
import 'package:islami/providers/Settingsprovider.dart';
import 'package:provider/provider.dart';
class HadithDetailsScreen extends StatelessWidget {

 static const String routName='HadithDetailsScreen';
  @override

  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<Settingsprovider>(context);
var args =ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
        decoration:  BoxDecoration(image: DecorationImage(
            fit:BoxFit.fill  ,
            image: AssetImage(settingsprovider.getMainBackgroundImage()))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar:  AppBar(title: Text (args.title),),
          body:
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              margin: EdgeInsets.symmetric( horizontal:24 ,vertical: 40,),
              elevation: 12,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child:SingleChildScrollView(
                child: Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: Text(args.content,
                    textDirection:TextDirection.rtl,
                    style:Theme.of(context).textTheme.headline6),
                ),
              ),

            ),
          ),)
    );
  }
}
