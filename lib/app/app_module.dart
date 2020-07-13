import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [

  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => Container())
  ];

  @override
  Widget get bootstrap => throw AppWidget();

}