
import 'package:flutter/material.dart';

class Settingsprovider extends ChangeNotifier{
ThemeMode currentTheme = ThemeMode.light;
String currentLanguage = 'en';
void changeLocal(String newLocal){
  currentLanguage= newLocal;
  notifyListeners();
}
void changeTheme(ThemeMode newMode){
  currentTheme=newMode;
  notifyListeners();
}
String getMainBackgroundImage(){
  return currentTheme==ThemeMode.light?
  'assets/images/main_background.png':'assets/images/main_dark.png';
}
bool isDarkMode(){
  return currentTheme==ThemeMode.dark;
}
}