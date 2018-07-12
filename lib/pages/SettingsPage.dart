import 'package:flutter/material.dart';

class  Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Configuraciones"),
        backgroundColor: Colors.blueAccent
        ),
      body: new Center(
        child: new Text("Settings view on development"),
      ),
    );
  }
}