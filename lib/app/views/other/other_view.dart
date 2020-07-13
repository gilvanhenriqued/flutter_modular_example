import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/views/home/home_controller.dart';

class OtherView extends StatefulWidget {
  @override
  _OtherViewState createState() => _OtherViewState();
}

class _OtherViewState extends State<OtherView> {

  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Text('Hello ${homeController.name}!'),
        )
      ),
    );
  }
}