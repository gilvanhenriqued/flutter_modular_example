import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/app_controller.dart';
import 'package:flutter_modular_example/app/app_widget.dart';
import 'package:flutter_modular_example/app/views/home/home_controller.dart';
import 'package:flutter_modular_example/app/views/home/home_view.dart';
import 'package:flutter_modular_example/app/views/other/other_view.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomeView()),
    Router('/other', child: (_, args) => OtherView()),
  ];

  @override
  Widget get bootstrap => AppWidget();

}