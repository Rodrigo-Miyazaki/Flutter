import 'package:cookbook/app/modules/home/bloc/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cookbook/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
