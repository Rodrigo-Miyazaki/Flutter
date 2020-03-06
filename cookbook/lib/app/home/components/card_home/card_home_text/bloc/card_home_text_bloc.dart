import 'dart:async';
import 'package:bloc/bloc.dart';

import 'card_home_text_event.dart';
import 'card_home_text_state.dart';

class CardHomeTextBloc extends Bloc<CardHomeTextEvent, CardHomeTextState> {
  @override
  CardHomeTextState get initialState => InitialCardHomeTextState();

  @override
  Stream<CardHomeTextState> mapEventToState(CardHomeTextEvent event) async* {

  }
}
