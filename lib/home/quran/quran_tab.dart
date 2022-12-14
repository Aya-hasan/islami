import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/quran/sura_name_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizatons.dart';
class quranTap extends StatelessWidget{
  List<String> name=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Container(alignment:  Alignment.center,
      child: Column(
        children: [
          Expanded(flex: 1,
              child: Container(child: Image.asset('assets/images/quran_header_image.png'))),
        Container(color: Theme.of(context).primaryColor,
        height: 2,
        ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(AppLocalizations.of(context)!.chapter_name,
                style: Theme.of(context).textTheme.headline4),
          ),
          Container(color: Theme.of(context).primaryColor,
            height: 2,
          ),
          Expanded(flex: 3,
            child:
            ListView.separated(itemBuilder: (_,index){
              return sura_name_widget(name[index],index) ;},

               separatorBuilder: (_, index) {return Container(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 height: 1,
                 width: double.infinity,color: Theme.of(context).accentColor,) ;},
                itemCount:name.length),
          ),
         
        ],),
    );
  }
}