import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/home/home_controller.dart';

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
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              if(homeController.pokemons.error != null){
                return Center(
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text('Press Again')
                  )
                );
              }

              if(homeController.pokemons.value == null){
                return Center(
                  child: CircularProgressIndicator()
                );
              }

              var list = homeController.pokemons.value;

              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(list[index].name),
                  );
                },
              );
            }
          ),
        ]
      ),
    );
  }
}
