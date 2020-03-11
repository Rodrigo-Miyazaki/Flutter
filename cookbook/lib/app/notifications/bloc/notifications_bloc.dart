import 'dart:async';
import 'package:bloc/bloc.dart';

import 'notifications_event.dart';
import 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  @override
  NotificationsState get initialState => InitialNotificationsState();

  @override
  Stream<NotificationsState> mapEventToState(NotificationsEvent event) async* {

  }
}
