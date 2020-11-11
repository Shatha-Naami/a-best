import 'package:best/Ui/add_story/add_story_screen.dart';
import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
import 'package:best/Ui/main_tabs/main_tabs_screen.dart';
import 'package:best/Ui/sing_in_email/sing_in_email.dart';
import 'package:best/Ui/story/story_page.dart';
import 'package:best/Ui/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:best/app/bloc/app_bloc.dart';
import 'package:best/core/app_color.dart';
import 'package:best/core/app_language.dart';
import 'package:best/core/app_localizations.dart';
import '../injectoin.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _AppBloc = sl<AppBloc>();

  @override
  void initState() {
    _AppBloc.add(IniEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _AppBloc,
        builder: (BuildContext context, AppState state) {
          return StreamBuilder(
              stream: localeSubjectAppColor.stream.distinct(),
              builder: (context, snapshotColor) {
                print('App Color is ${snapshotColor.data} ');
                return StreamBuilder(
                    stream: localeSubjectAppLanguage.stream.distinct(),
                    initialData: state.appLanguage == AppLanguageKeys.AR
                        ? Locale('ar', '')
                        : Locale('en', ''),
                    builder: (context, snapshotLanguage) {
                      return MaterialApp(
                          title: "App",
                          debugShowCheckedModeBanner: false,
                          // home: ListRestaurantPage(),
                          home: MainTabsScreen(),
                          locale: snapshotLanguage.data == AppLanguageKeys.AR
                              ? Locale('ar', '')
                              : Locale('en', ''),
                          localizationsDelegates: [
                            AppLocalizations.delegate,
                            GlobalMaterialLocalizations.delegate,
                            GlobalWidgetsLocalizations.delegate,
                          ],
                          supportedLocales: [
                            const Locale('en', ''), // English
                            const Locale('ar', ''), // Arabic
                          ]);
                    });
              });
        });
  }
}
