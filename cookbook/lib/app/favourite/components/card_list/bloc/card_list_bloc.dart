import 'dart:async';
import 'package:bloc/bloc.dart';

import 'card_list_event.dart';
import 'card_list_state.dart';

class CardListBloc extends Bloc<CardListEvent, CardListState> {
  @override
  CardListState get initialState => InitialCardListState();

  @override
  Stream<CardListState> mapEventToState(CardListEvent event) async* {
    // TODO: Add Logic
  }
}
