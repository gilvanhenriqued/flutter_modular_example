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
        title: Text('Lista de Pokemons'),
      ),
      body: Observer(
        builder: (BuildContext context) {

          var list = homeController.pokemons.value;

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

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(list[index].name),
                  ),
                  Divider(),
                ],
              );          
            },
          );
        }
      ),
    );
  }
}
