import 'dart:io';



import 'package:best/data/db_helper/Idb_helper.dart';
import 'package:best/data/http_helper/Ihttp_helper.dart';
import 'package:best/data/prefs_helper/iprefs_helper.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iprefHelper, this._iDbHelper);

  @override
  Future<int> getAppLanguage() async {
    return await _iprefHelper.getAppLanguage();
  }


  @override
  Future<void> setAppLanguage(int value) async{
   await _iprefHelper.setAppLanguage(value);
  }

  @override
  Future<int> getAppThem() async {
    // TODO: implement getAppThem
     return await _iprefHelper.getAppThem();
  }

  @override
  Future<void> setAppLThem(int value) async {
    // TODO: implement setAppLThem
   await _iprefHelper.setAppLThem(value);
  }
 
}
