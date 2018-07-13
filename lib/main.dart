import 'package:flutter/material.dart';
import './pages/LoginPage.dart';
import './pages/HotelHomePage.dart';
import './pages/ChartsPage.dart';
import './pages/HotelListPage.dart';
import './pages/UpdatePage.dart';
import './pages/SettingsPage.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: <String, WidgetBuilder>{
        "/Login": (BuildContext context) => new Login(),
        "/HotelHomePage": (BuildContext context) => new HotelHomePage(),
        "/Chart": (BuildContext context) => new Chart(),
        "/HotelList": (BuildContext context) => new HotelList(),
        "/Update": (BuildContext context) => new Update(),
        "/Settings": (BuildContext context) => new Settings(),
      }));
}
