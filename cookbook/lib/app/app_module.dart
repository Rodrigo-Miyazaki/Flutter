import 'package:cookbook/app/help/bloc/help_bloc.dart';
import 'package:cookbook/app/security/bloc/security_bloc.dart';
import 'package:cookbook/app/notifications/bloc/notifications_bloc.dart';
import 'package:cookbook/app/messages/bloc/messages_bloc.dart';
import 'package:cookbook/app/login/bloc/login_bloc.dart';
import 'package:cookbook/app/splashscreen/bloc/splashscreen_bloc.dart';
import 'package:cookbook/app/initial/bloc/initial_bloc.dart';
import 'package:cookbook/app/favourite/bloc/favourite_bloc.dart';
import 'package:cookbook/app/configuration/bloc/configuration_bloc.dart';
import 'package:cookbook/app/recipe/detail/bloc/detail_bloc.dart';
import 'package:cookbook/app/home/components/card_home/card_home/bloc/card_home_bloc.dart';
import 'package:cookbook/app/home/repositories/posts_api_repository.dart';
import 'package:cookbook/app/home/components/card_home/card_home_text/bloc/card_home_text_bloc.dart';
import 'package:cookbook/app/home/home/bloc/home_bloc.dart';
import 'package:cookbook/app/bloc/app_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/app/app_widget.dart';

import 'modules/initial/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HelpBloc()),
        Bind((i) => SecurityBloc()),
        Bind((i) => NotificationsBloc()),
        Bind((i) => MessagesBloc()),
        Bind((i) => LoginBloc()),
        Bind((i) => SplashscreenBloc()),
        Bind((i) => InitialBloc()),
        Bind((i) => FavouriteBloc()),
        Bind((i) => ConfigurationBloc()),
        Bind((i) => DetailBloc()),
        Bind((i) => CardHomeBloc()),
        Bind((i) => PostsApiRepository()),
        Bind((i) => CardHomeTextBloc()),
        Bind((i) => HomeBloc()),
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
