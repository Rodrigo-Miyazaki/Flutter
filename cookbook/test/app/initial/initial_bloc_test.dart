
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cookbook/app/app_module.dart';


void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());


  // setUp(() {
  //     bloc = AppModule.to.get<InitialBloc>();
  // });

  // group('InitialBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<InitialBloc>());
  //   });
  // });
}
