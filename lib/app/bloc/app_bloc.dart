import 'package:bloc/bloc.dart';
import 'package:best/core/app_color.dart';
import 'package:best/core/app_language.dart';
import 'package:best/data/repository/irepository.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  IRepository _repository;

  AppBloc(this._repository);

  @override
  AppState get initialState => AppState.initail();

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is IniEvent) {
      final language = await _repository.getAppLanguage();
      final them = await _repository.getAppThem();

      yield state.rebuild((b) => b
        ..appLanguage = language
        ..appThem = them);
      changeAppLanguage(state.appLanguage);
      changeAppColor(state.appThem);
    }
  }
}
