import 'package:flutter/material.dart';
import 'package:device_id/device_id.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<String> getData() async {
    final response = await http.post(
        Uri.encodeFull("http://35.203.0.214/Hoteles_server/index/Login"),
        body: {
          "uuid": _deviceid,
          "usuario": controller.text,
          "clave": controller2.text
        },
        headers: {
          "Accept": "application/json",
        });
    // print(response.body);
    if (response.statusCode == 200 && response.body != "null") {
      Map<dynamic, dynamic> list = (JSON.decode(response.body)).elementAt(0);
      if (list.containsKey('idusuario')) {
        // print("usuario : ${list['nombrecompleto']} se logueo");
        Navigator.of(context).pushNamed("/HotelList");
      }
    }
  }

  String _deviceid = 'Unknown';

  @override
  void initState() {
    super.initState();
    initDeviceId();
  }

  Future<void> initDeviceId() async {
    String deviceid;

    deviceid = await DeviceId.getID;

    if (!mounted) return;

    setState(() {
      _deviceid = deviceid;
    });
  }

  TextEditingController controller = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'horus_logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 155.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final username = TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Usuario",
          hintStyle: TextStyle(fontSize: 16.0),
          contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final password = TextFormField(
      controller: controller2,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña",
          hintStyle: TextStyle(fontSize: 16.0),
          contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueAccent.shade100,
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          color: Colors.blueAccent,
          onPressed: getData,
          child: Text(
            "Iniciar Sesión",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    return Form(
      child: new Center(
        child: ListView(
            padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0),
            children: <Widget>[
              logo,
              SizedBox(height: 35.0),
              username,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton
            ]),
      ),
    );
  }
}
