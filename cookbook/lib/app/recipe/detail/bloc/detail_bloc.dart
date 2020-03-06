import 'dart:async';
import 'package:bloc/bloc.dart';

import 'detail_event.dart';
import 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  @override
  DetailState get initialState => InitialDetailState();

  @override
  Stream<DetailState> mapEventToState(DetailEvent event) async* {

  }
}
