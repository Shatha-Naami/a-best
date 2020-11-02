import 'package:best/Ui/add_text_story/bloc/add_text_event.dart';
import 'package:best/Ui/add_text_story/bloc/add_text_state.dart';
import 'package:bloc/bloc.dart';

class AddTextBloc extends Bloc<AddTextEvent, AddTextState> {
  @override
  AddTextState get initialState => AddTextState.initail();

  @override
  Stream<AddTextState> mapEventToState(
    AddTextEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }

    if (event is ChangeBackgroundEvent) {
      try {
        yield state.rebuild((b) => b..currentIndex = event.background);
      } catch (e) {
        print('GetAppLanguage Error $e');
        yield state.rebuild((b) => b..currentIndex = 0);
      }
    }
  }
}
