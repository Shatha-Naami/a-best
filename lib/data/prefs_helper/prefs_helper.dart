
import 'package:flutter/material.dart';
import 'package:best/core/app_color.dart';
import 'package:best/core/app_language.dart';
import 'package:best/core/constent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'iprefs_helper.dart';

class PrefsHelper implements IPrefsHelper {

    @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }
 
 @override
  Future<int> getAppLanguage() async {
    return (await getPrefs()).getInt(APP_LANGUAGE) ?? AppLanguageKeys.EN;
  }

  @override
  Future<void> setAppLanguage(int value) async{
    (await getPrefs()).setInt(APP_LANGUAGE,value);
  }

  @override
  Future<int> getAppThem() async{
    // TODO: implement getAppThem
   return (await getPrefs()).getInt(APP_THEM) ?? AppThemKeys.LIGHT;
  }

  @override
  Future<void> setAppLThem(int value) async{
    // TODO: implement setAppLThem
    (await getPrefs()).setInt(APP_THEM,value);
  }
  
}
