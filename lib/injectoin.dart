import 'package:best/Ui/add_text_story/bloc/add_text_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:best/app/bloc/app_bloc.dart';
import 'package:best/core/constent.dart';
import 'package:best/data/db_helper/Idb_helper.dart';
import 'package:best/data/db_helper/db_helper.dart';
import 'package:best/data/http_helper/Ihttp_helper.dart';
import 'package:best/data/http_helper/http_helper.dart';
import 'package:best/data/prefs_helper/iprefs_helper.dart';
import 'package:best/data/prefs_helper/prefs_helper.dart';
import 'package:best/data/repository/irepository.dart';
import 'package:best/data/repository/repository.dart';

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  // data
  sl.registerLazySingleton<IDbHelper>(() => DbHelper());
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl(), sl()));

  /// AppBloc

  sl.registerFactory(() => AppBloc(sl()));

  /// AddTextStory

  sl.registerFactory(() => AddTextBloc());
}
