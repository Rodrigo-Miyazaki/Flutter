import 'package:flutter_modular/flutter_modular.dart';
import 'package:cookbook/app/app_module.dart';



void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());


  // setUp(() {
  //     bloc = AppModule.to.get<CardHomeBloc>();
  // });

  // group('CardHomeBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<CardHomeBloc>());
  //   });
  // });
}
