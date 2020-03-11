import 'dart:async';
import 'package:bloc/bloc.dart';

import 'security_event.dart';
import 'security_state.dart';

class SecurityBloc extends Bloc<SecurityEvent, SecurityState> {
  @override
  SecurityState get initialState => InitialSecurityState();

  @override
  Stream<SecurityState> mapEventToState(SecurityEvent event) async* {

  }
}
