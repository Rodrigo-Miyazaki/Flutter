import 'dart:async';
import 'package:bloc/bloc.dart';

import 'initial_event.dart';
import 'initial_state.dart';

class InitialBloc extends Bloc<InitialEvent, InitialState> {
  @override
  InitialState get initialState => InitialInitialState();

  @override
  Stream<InitialState> mapEventToState(InitialEvent event) async* {
    
  }
}
