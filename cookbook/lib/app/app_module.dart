import 'package:cookbook/app/recipe/detail/bloc/detail_bloc.dart';
import 'package:cookbook/app/home/components/card_home/card_home/bloc/card_home_bloc.dart';
import 'package:cookbook/app/home/repositories/posts_api_repository.dart';
import 'package:cookbook/app/home/components/card_home/card_home_text/bloc/card_home_text_bloc.dart';
import 'package:cookbook/app/home/home/bloc/home_bloc.dart';
import 'package:cookbook/app/bloc/app_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/app/app_widget.dart';
import 'package:cookbook/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
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
