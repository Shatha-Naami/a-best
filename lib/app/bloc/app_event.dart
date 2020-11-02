library app_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_event.g.dart';

abstract class AppEvent {}

abstract class IniEvent extends AppEvent
    implements Built<IniEvent, IniEventBuilder> {
  // fields go here

  IniEvent._();

  factory IniEvent([updates(IniEventBuilder b)]) = _$IniEvent;
}
