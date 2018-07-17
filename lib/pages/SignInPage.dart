import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:device_id/device_id.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

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
          "usuario": "",
          "clave": ""
        },
        headers: {
          "Accept": "application/json",
        });
    print(response.statusCode);
    print(response.body);
    print(md5.convert(utf8.encode(password)));
  }

  String _deviceid = 'Unknown';
  String user = '';
  String password = '';

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
      keyboardType: TextInputType.text,
      onFieldSubmitted: (String str) {
        setState(() {
          user = str;
        });
      },
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Usuario",
          hintStyle: TextStyle(fontSize: 16.0),
          contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final password = TextFormField(
      onFieldSubmitted: (String password) {
        setState(() {
          password = password;
        });
      },
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
          onPressed: getData,
          color: Colors.blueAccent,
          child: Text(
            "Iniciar Sesión",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    return Container(
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
