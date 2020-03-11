import 'dart:async';
import 'package:bloc/bloc.dart';

import 'help_event.dart';
import 'help_state.dart';

class HelpBloc extends Bloc<HelpEvent, HelpState> {
  @override
  HelpState get initialState => InitialHelpState();

  @override
  Stream<HelpState> mapEventToState(HelpEvent event) async* {

  }
}
