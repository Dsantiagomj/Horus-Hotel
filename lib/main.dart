import 'package:flutter/material.dart';
import './pages/HomePage.dart';
import './pages/ChartsPage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      "/Chart": (BuildContext context) => new Chart()
    },

  ));
}