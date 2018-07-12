import 'package:flutter/material.dart';

class  Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Chart view"),
        backgroundColor: Colors.blueAccent
        ),
      body: new Center(
        child: new Text("Chart view on development"),
      ),
    );
  }
}