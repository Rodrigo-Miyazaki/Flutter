import 'dart:async';
import 'package:bloc/bloc.dart';

import 'favourite_event.dart';
import 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  @override
  FavouriteState get initialState => InitialFavouriteState();

  @override
  Stream<FavouriteState> mapEventToState(FavouriteEvent event) async* {
    
  }
}
