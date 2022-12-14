import 'package:flutter/material.dart';

class verseWidget extends StatelessWidget {
String content;
int index;
verseWidget(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 8),
      alignment: Alignment.center,
      child: Text('$content [$index]',
        textDirection:TextDirection. rtl,
        style:Theme.of(context).textTheme.headline6),
    );
  }
}
