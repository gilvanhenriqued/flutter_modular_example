import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/views/home/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: TextField(
            onChanged: (value){
              homeController.name = value;
            },
            decoration: InputDecoration(
              labelText: 'Digite o seu nome...'
            ),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right),
        onPressed: (){
          Modular.to.pushNamed('/other/${homeController.name}');
        },
      ),
    );
  }
}