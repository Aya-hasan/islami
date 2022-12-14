import 'package:flutter/material.dart';

import 'package:islami/home/settings/Theme_buttom_sheet.dart';
import 'package:provider/provider.dart';
import '../../providers/Settingsprovider.dart';
import 'language_buttom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizatons.dart';
class settings_Tap extends StatefulWidget {


  @override
  State<settings_Tap> createState() => _settings_TapState();
}

class _settings_TapState extends State<settings_Tap> {
  @override
  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<Settingsprovider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
Text(AppLocalizations.of(context)!.theme,
  style: Theme.of(context).textTheme.subtitle2,),
        SizedBox(height: 8,),
        InkWell(
          onTap: (){
            ShowThemeButtomSheet();
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(18),
              border:Border.all(color:Theme.of(context).accentColor ,
                  width: 1,
              ),

            ),
            child: Text(settingsprovider.isDarkMode()?
            AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,
            style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
            SizedBox(height: 25,),
            Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){showLanguageBottom();},
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(18),
                  border:Border.all(color:Theme.of(context).accentColor ,
                    width: 1,
                  ),

                ),
                child: Text(settingsprovider.currentLanguage=='en'?
                'English':'العربيه',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            )

      ]),

    );


  }
void  showLanguageBottom(){
    showModalBottomSheet(context: context, builder: (buildcontext){
      return language_bottom_sheet();
    } );

}
   void ShowThemeButtomSheet(){
    showModalBottomSheet(context: context, builder:(buildcontext){
      return Theme_buttom_sheet();

    });
   }
}
