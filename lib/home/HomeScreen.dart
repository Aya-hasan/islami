import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/hadith/hadith_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/settings/settings_Tap.dart';
import 'package:islami/home/tasbih/tasbih_tab.dart';
import 'package:islami/providers/Settingsprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizatons.dart';
class HomeScreen extends StatefulWidget{
  static const String routName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<Settingsprovider>(context);
    return Container(
      decoration:  BoxDecoration(image: DecorationImage(
        fit:BoxFit.fill  ,
          image: AssetImage((settingsprovider.getMainBackgroundImage())))),
      child: Scaffold(

        backgroundColor: Colors.transparent,
       appBar:  AppBar(
    title: Text(AppLocalizations.of(context)!.app_title),),
bottomNavigationBar: BottomNavigationBar(

  currentIndex:selectedIndex ,

onTap: (index) {

setState(() {

  selectedIndex=index;

});

},

    items: [

      BottomNavigationBarItem(

         // backgroundColor: MyTheme.primaryColor,

          label: AppLocalizations.of(context)!.quran,

          icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size: 48,)),

      BottomNavigationBarItem(

         // backgroundColor: MyTheme.primaryColor,

          label:AppLocalizations.of(context)!.hadith,



          icon: ImageIcon(AssetImage('assets/images/hadith.png'),size: 48,)),

      BottomNavigationBarItem(

         // backgroundColor: MyTheme.primaryColor,

          label:AppLocalizations.of(context)!.mentions,



          icon: ImageIcon(AssetImage('assets/images/sebha_blue.png'),size: 48,)),

      BottomNavigationBarItem(

        //  backgroundColor: MyTheme.primaryColor,

          label:AppLocalizations.of(context)!.radio,



          icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),size: 48,)),

      BottomNavigationBarItem(

        //  backgroundColor: MyTheme.primaryColor,

          label:AppLocalizations.of(context)!.settings,



          icon: Icon(Icons.settings)),

    ]),
    body: tabs[selectedIndex],
    )
    );

  }
  List<Widget> tabs=[quranTap(),hadithTap(),tasbihTap(),radioTap(),settings_Tap()];
}