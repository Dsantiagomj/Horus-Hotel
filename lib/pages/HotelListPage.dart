import 'package:flutter/material.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Lista de hoteles"),
        backgroundColor: Colors.blueAccent
      ),
      body: new Center(
        child: new Text("Hotel List on development"))
    );
  }
}