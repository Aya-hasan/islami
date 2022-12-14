import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Hadith.dart';
import 'hadith_title_widget.dart';
class hadithTap extends StatefulWidget{
  @override
  State<hadithTap> createState() => _hadithTapState();
}

class _hadithTapState extends State<hadithTap> {
  List<Hadith>allHadithList=[];

  @override
  Widget build(BuildContext context) {
    if(allHadithList.isEmpty)
    {loadHadithFile();}
    return Container(
      child: Column(
        children: [
         Image.asset('assets/images/hadith_header_image.png'),

          Expanded(
            child:
            ListView.separated(itemBuilder:(buildContext,index){
              return Hadith_title_widget(allHadithList[index]);
            },itemCount: allHadithList.length,

                separatorBuilder: (_, index) {return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 1,
                  width: double.infinity,color: Theme.of(context).accentColor,);}

            ),
          ),

        ],
      ),

    );
  }

  void loadHadithFile ()async{
    List<Hadith>hadithList=[];
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
List <String>allHadithContent=content.split('#');
for (int i=0;i<allHadithContent.length;i++){
 String singleHadith =allHadithContent[i].trim();
 int indexOfFirstLine=singleHadith.indexOf('\n');
String title= singleHadith.substring(0,indexOfFirstLine);
 String content= singleHadith.substring(indexOfFirstLine+1);

 Hadith h=  Hadith(title,content);
hadithList.add(h);

}
allHadithList=hadithList;
setState(() {

});
  }
}