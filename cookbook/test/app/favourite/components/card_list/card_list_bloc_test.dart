import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cookbook/app/app_module.dart';
import 'package:cookbook/app/favourite/components/card_list/bloc/card_list_bloc.dart';
import 'package:cookbook/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());
  CardListBloc bloc;

  // setUp(() {
  //     bloc = AppModule.to.get<CardListBloc>();
  // });

  // group('CardListBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<CardListBloc>());
  //   });
  // });
}
