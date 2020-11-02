library add_text_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_text_event.g.dart';

abstract class AddTextEvent {}

abstract class ClearError extends AddTextEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class ChangeBackgroundEvent extends AddTextEvent
    implements Built<ChangeBackgroundEvent, ChangeBackgroundEventBuilder> {
  // fields go here

  int get background;

  ChangeBackgroundEvent._();

  factory ChangeBackgroundEvent([updates(ChangeBackgroundEventBuilder b)]) =
      _$ChangeBackgroundEvent;
}
