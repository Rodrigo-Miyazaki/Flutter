import 'dart:async';
import 'package:bloc/bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeMainState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {

  }
}
