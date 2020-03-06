import 'dart:async';
import 'package:bloc/bloc.dart';

import 'card_home_event.dart';
import 'card_home_state.dart';

class CardHomeBloc extends Bloc<CardHomeEvent, CardHomeState> {
  @override
  CardHomeState get initialState => InitialCardHomeState();

  @override
  Stream<CardHomeState> mapEventToState(CardHomeEvent event) async* {

  }
}
