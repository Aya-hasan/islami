import 'package:flutter/material.dart';

class suradetailsScreen extends StatelessWidget {
static const String routName= 'suradetailsScreen';

  @override
  Widget build(BuildContext context) {
    suradetailsArgs args =ModalRoute.of(context)?.settings.arguments as suradetailsArgs;
    return Container(
        decoration:const  BoxDecoration(image: DecorationImage(
        fit:BoxFit.fill  ,
        image: AssetImage('assets/images/main_background.png'))),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar:  AppBar(title: Text (args.name),),
    ));
  }
}
class suradetailsArgs{
  int index;
  String name;
  suradetailsArgs({required this.index,required this.name});
}
