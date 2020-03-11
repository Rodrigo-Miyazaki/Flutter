import 'dart:async';
import 'package:bloc/bloc.dart';

import 'messages_event.dart';
import 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  @override
  MessagesState get initialState => InitialMessagesState();

  @override
  Stream<MessagesState> mapEventToState(MessagesEvent event) async* {

  }
}
