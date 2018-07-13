import 'package:flutter/material.dart';
import './create/CreateHotelPage.dart' as first;
import './create/CreatePinPage.dart' as second;

class HotelCreate extends StatefulWidget {
  @override
  _HotelCreateState createState() => _HotelCreateState();
}

class _HotelCreateState extends State<HotelCreate>
    with SingleTickerProviderStateMixin {
  TabController controller;
  static String createHotel = "Crear Hotel";
  static String createPin = "Crear Pin";
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Crear Hotel Horus"),
        backgroundColor: Colors.blueAccent,
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[new Tab(text: createHotel), new Tab(text: createPin)],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[new first.CreateHotel(), new second.CreatePin()],
      ),
    );
  }
}
