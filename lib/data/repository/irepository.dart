
import 'dart:io';



abstract class IRepository {
  
   Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);

 Future<int> getAppThem();

  Future<void> setAppLThem(int value);
}
