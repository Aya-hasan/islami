import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/home/HomeScreen.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/providers/Settingsprovider.dart';

import 'package:islami/suradetails/suradetails.dart';
import 'package:islami/hadith_details/hadith_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizatons.dart';
void main() {
  runApp(ChangeNotifierProvider(
create: (buidContext)=>Settingsprovider(),
      child: myapp()));
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<Settingsprovider>(context);
    return MaterialApp(
localizationsDelegates: [
  AppLocalizations.delegate,
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
],
supportedLocales:AppLocalizations.supportedLocales ,
locale:Locale(settingsprovider.currentLanguage),
debugShowCheckedModeBanner: false,
        initialRoute:HomeScreen.routName ,
        routes:{
          HomeScreen.routName:(_)=> HomeScreen(),
          suradetailsScreen.routName:(_)=>suradetailsScreen(),
          HadithDetailsScreen.routName:(_)=> HadithDetailsScreen(),

        },

        theme:MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
      themeMode:settingsprovider.currentTheme ,
    );
  }
}