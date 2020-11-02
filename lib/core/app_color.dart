import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

var localeSubjectAppColor = BehaviorSubject<int>();

changeAppColor(int choice) {
  localeSubjectAppColor.sink.add(choice);
}

class AppColorData {
  static const backgroundWhite = Color.fromRGBO(239, 237, 237, 1);
  static const textWhite = Color.fromRGBO(175, 174, 174, 1);
  static const backgroundBloc = Color.fromRGBO(239, 238, 238, 1);
  static const textBloc = Color.fromRGBO(239, 238, 238, 1);
}


class AppThemKeys {
  static const LIGHT = 0;
  static const NIGHT = 1;
}


//if (snapshot.data == AppColorKeys.whiteColor) {
//backgroundColorOne = Color.fromRGBO(239, 238, 238, 1);
//backgroundColorTow = Color.fromRGBO(239, 238, 238, 1);
//} else {
//backgroundColorOne = Color.fromRGBO(81, 81, 81, 1);
//backgroundColorTow = Color.fromRGBO(81, 81, 81, 1);
//}

//if (snapshot.data == AppColorKeys.whiteColor) {
//backgroundColorOne = Color.fromRGBO(239, 238, 238, 1);
//backgroundColorTow = Color.fromRGBO(239, 238, 238, 1);
//} else {
//backgroundColorOne = Color.fromRGBO(81, 81, 81, 1);
//backgroundColorTow = Color.fromRGBO(81, 81, 81, 1);
//}

//                      AppColorKeys.whiteColor
//                          ? Colors.grey
//                          : Colors.black,

//                 =>> about
//                      snapshot.data == AppColorKeys.whiteColor
//                  ? Colors.white
//                      : Color.fromRGBO(72, 69, 69, 1),

//                =>>  data use
//                      color: snapshot
//                          .data ==
//                      AppColorKeys
//                          .whiteColor
//                      ? Theme.of(
//                      context)
//                      .primaryColor
//                      : Color.fromRGBO(
//                  81,
//                  81,
//                  81,
//                  1),


//               =>>   Login

//                      color: snapshot.data == AppColorKeys.whiteColor
//                  ? Theme.of(context).primaryColor
//                      : Color.fromRGBO(72, 69, 69, 1),

//                      color: snapshot.data == AppColorKeys.whiteColor
//                          ? Colors.black.withOpacity(0.1)
//                          : Colors.black .withOpacity(0.3),

//                  =>>> AppBAr
//
//                  snapshot.data == AppColorKeys.whiteColor
//                      ? Colors.white70
//                          : Color.fromRGBO(81, 81, 81, 1),