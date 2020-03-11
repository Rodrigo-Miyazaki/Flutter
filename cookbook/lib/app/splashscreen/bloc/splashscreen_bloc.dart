import 'dart:async';
import 'package:bloc/bloc.dart';

import 'splashscreen_event.dart';
import 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  @override
  SplashscreenState get initialState => InitialSplashscreenState();

  @override
  Stream<SplashscreenState> mapEventToState(SplashscreenEvent event) async* {

  }
}
