import 'package:flutter/material.dart';

class OtherView extends StatefulWidget {
  final String name;

  const OtherView({Key key, this.name}) : super(key: key);

  @override
  _OtherViewState createState() => _OtherViewState();
}

class _OtherViewState extends State<OtherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Text('Hello ${widget.name}!'),
        )
      ),
    );
  }
}