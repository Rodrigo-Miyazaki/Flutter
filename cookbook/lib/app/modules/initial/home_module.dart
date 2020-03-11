import 'package:cookbook/app/modules/initial/bloc/home_bloc.dart';
import 'package:cookbook/app/splashscreen/splashscreen_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashscreenPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
