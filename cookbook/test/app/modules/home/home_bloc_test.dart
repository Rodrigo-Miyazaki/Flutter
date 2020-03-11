import 'package:flutter_modular/flutter_modular.dart';
import 'package:cookbook/app/app_module.dart';
import 'package:cookbook/app/modules/initial/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());


  // setUp(() {
  //     bloc = HomeModule.to.get<HomeBloc>();
  // });

  // group('HomeBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<HomeBloc>());
  //   });
  // });
}
