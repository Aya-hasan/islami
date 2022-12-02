import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/hadith/hadith_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/tasbih/tasbih_tab.dart';

class HomeScreen extends StatefulWidget{
  static const String routName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const  BoxDecoration(image: DecorationImage(
        fit:BoxFit.fill  ,
          image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(

        backgroundColor: Colors.transparent,
       appBar:  AppBar(
    title:const Text('Islami'),),
bottomNavigationBar: BottomNavigationBar(
  currentIndex:selectedIndex ,
onTap: (index) {
setState(() {
  selectedIndex=index;
});
},
    items:const [



      BottomNavigationBarItem(
          backgroundColor: MyTheme.primaryColor,
          label: 'Quran',
          icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size: 48,)),
      BottomNavigationBarItem(
          backgroundColor: MyTheme.primaryColor,
          label: 'Hadith',

          icon: ImageIcon(AssetImage('assets/images/hadith.png'),size: 48,)),
      BottomNavigationBarItem(
          backgroundColor: MyTheme.primaryColor,
          label: 'Tasbih',

          icon: ImageIcon(AssetImage('assets/images/sebha_blue.png'),size: 48,)),
      BottomNavigationBarItem(
          backgroundColor: MyTheme.primaryColor,
          label: 'radio',

          icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),size: 48,)),

    ]),
    body: tabs[selectedIndex],
    )
    );

  }
  List<Widget> tabs=[quranTap(),hadithTap(),tasbihTap(),radioTap()];
}