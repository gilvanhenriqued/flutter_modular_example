import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/home/home_controller.dart';
import 'package:flutter_modular_example/app/modules/home/home_view.dart';
import 'package:flutter_modular_example/app/modules/home/repositories/poke_repository.dart';
import 'package:flutter_modular_example/app/shared/utils/constants.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
    Bind((i) => HomeController(i.get()<PokeRepository>())),
    Bind((i) => PokeRepository(i.get()<Dio>())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomeView()),
  ];

}