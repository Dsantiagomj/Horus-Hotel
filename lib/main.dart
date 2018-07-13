import 'package:flutter/material.dart';
import './pages/LoginPage.dart';
import './pages/HomePage.dart';
import './pages/ChartsPage.dart';
import './pages/HotelListPage.dart';
import './pages/UpdatePage.dart';
import './pages/SettingsPage.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => new Login(),
        "/Login": (BuildContext context) => new Login(),
        "/HomePage": (BuildContext context) => new HomePage(),
        "/Chart": (BuildContext context) => new Chart(),
        "/HotelList": (BuildContext context) => new HotelList(),
        "/Update": (BuildContext context) => new Update(),
        "/Settings": (BuildContext context) => new Settings(),
      }));
}
