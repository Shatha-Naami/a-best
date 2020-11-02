library add_text_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';

part 'add_text_state.g.dart';

abstract class AddTextState
    implements Built<AddTextState, AddTextStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  int  currentIndex;

  AddTextState._();

  factory AddTextState([updates(AddTextStateBuilder b)]) = _$AddTextState;

  factory AddTextState.initail() {
    return AddTextState(
      (b) => b
        ..error = ""
        ..isLoading = false
        ..currentIndex = 0,
    );
  }
}
