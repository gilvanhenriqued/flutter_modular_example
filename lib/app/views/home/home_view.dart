import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            decoration: InputDecoration(
              labelText: 'Digite o seu nome...'
            ),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right),
        onPressed: (){
          Navigator.pushNamed(context, '/other');
        },
      ),
    );
  }
}