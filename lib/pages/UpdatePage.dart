import 'package:flutter/material.dart';

class  Update extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Actualiza tus datos"),
        backgroundColor: Colors.blueAccent
        ),
      body: new Center(
        child: new Text("Update view on development"),
      ),
    );
  }
}