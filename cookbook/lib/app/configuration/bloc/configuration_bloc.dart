import 'dart:async';
import 'package:bloc/bloc.dart';

import 'configuration_event.dart';
import 'configuration_state.dart';

class ConfigurationBloc extends Bloc<ConfigurationEvent, ConfigurationState> {
  @override
  ConfigurationState get initialState => InitialConfigurationState();

  @override
  Stream<ConfigurationState> mapEventToState(ConfigurationEvent event) async* {
    
  }
}
