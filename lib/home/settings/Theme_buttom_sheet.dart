
import 'package:flutter/material.dart';

import '../../providers/Settingsprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizatons.dart';
class Theme_buttom_sheet extends StatefulWidget {


  @override
  State<Theme_buttom_sheet> createState() => _Theme_buttom_sheetState();
}

class _Theme_buttom_sheetState extends State<Theme_buttom_sheet> {
  @override
  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<Settingsprovider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         InkWell(
             onTap: (){
               settingsprovider.changeTheme(ThemeMode.light);
             },
             child:
             settingsprovider.isDarkMode()?
             getunSelectedItem(AppLocalizations.of(context)!.light):getSelectedItem(AppLocalizations.of(context)!.light)),
         SizedBox(height:12 ,),
         InkWell( onTap: (){
           settingsprovider.changeTheme(ThemeMode.dark);
         },
             child:

             settingsprovider.isDarkMode()?
             getSelectedItem(AppLocalizations.of(context)!.dark):
             getunSelectedItem(AppLocalizations.of(context)!.dark)),

       ],

      ) ,
    );
  }

  Widget getSelectedItem(String title){
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: Theme.of(context).textTheme.headline4?.
          copyWith(color:Theme.of(context). accentColor,),
        ),
        Icon(Icons.check,color: Theme.of(context).accentColor,),

      ],

    );
  }

  Widget getunSelectedItem(String title){
    return   Text(title,style: Theme.of(context).textTheme.headline4,);
  }
}
