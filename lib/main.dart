import 'package:flutter/material.dart';
import './pages/HomePage.dart';
import './pages/ChartsPage.dart';
import './pages/HotelListPage.dart';
import './pages/UpdatePage.dart';
import './pages/SettingsPage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      "/Chart": (BuildContext context) => new Chart(),
      "/HotelList": (BuildContext context) => new HotelList(),
      "/Update": (BuildContext context) => new Update(),
      "/Settings": (BuildContext context) => new Settings(),
     
    },

  ));
}