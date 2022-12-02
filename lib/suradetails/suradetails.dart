import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'verse_Widget.dart';
class suradetailsScreen extends StatefulWidget {
static const String routName= 'suradetailsScreen';

  @override
  State<suradetailsScreen> createState() => _suradetailsScreenState();
}

class _suradetailsScreenState extends State<suradetailsScreen> {
List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    suradetailsArgs args =ModalRoute.of(context)?.settings.arguments as suradetailsArgs;
    if(verses.isEmpty)
      {readfile(args.index+1);}
    return Container(
        decoration:const  BoxDecoration(image: DecorationImage(
        fit:BoxFit.fill  ,
        image: AssetImage('assets/images/main_background.png'))),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar:  AppBar(title: Text (args.name),),
   body:verses.isEmpty? Center(child: CircularProgressIndicator(),):
   Card(margin: EdgeInsets.symmetric( horizontal:24 ,vertical: 40,),
     elevation: 12,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
     child: ListView.separated(itemBuilder:(_,index){
          return verseWidget(verses[index],index+1);
      },itemCount: verses.length,
     separatorBuilder: (context, index) =>
         Container(color:Theme.of(context).primaryColor ,
           height: 1,width:double.infinity ,margin:EdgeInsets.symmetric(horizontal:64 ) ,) ,
     ),

   ),)
    );
  }

  void readfile(int fileIndex)async{
    String filecontent =await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String>lines= filecontent.trim().split('\n');
    setState(() {
  verses=lines;
});
  }
}
class suradetailsArgs{
  int index;
  String name;
  suradetailsArgs({required this.index,required this.name});
}
