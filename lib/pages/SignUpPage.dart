import 'package:flutter/material.dart';
import 'package:device_id/device_id.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Future<String> register() async {
    final response = await http.post(
        Uri.encodeFull("http://35.203.0.214/Hoteles_server/index/Registrar"),
        headers: {
          "Accept": "application/json"
        },
        body: {
          "uuid": _deviceid,
          "pin": pinController.text,
          "clave": passwordController.text,
          "codigo": codeController.text,
          "nombre": nameController.text,
          "usuario": usernameController.text,
          "email": emailController.text,
          "celular": cellphoneController.text,
        });
    response.body;
    if (response.statusCode == 200 && response.body == "[2]") {
      print("Pin inexistente");
    } else if (response.statusCode == 200 && response.body == "[1]") {
      print("Tipo de usuario no válido");
    } else if (response.statusCode == 200 &&
        response.body != "[2]" &&
        response.body != "[1]") {
      Navigator.of(context).pushNamed("/HotelList");
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

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController cellphoneController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController pinController = new TextEditingController();
  TextEditingController codeController = new TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    cellphoneController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    pinController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fullname = TextFormField(
      controller: nameController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Nombre Completo",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final email = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final cellphone = TextFormField(
      controller: cellphoneController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Celular",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final username = TextFormField(
      controller: usernameController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Usuario",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final password = TextFormField(
      controller: passwordController,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final pin = TextFormField(
      controller: pinController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Pin",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final code = TextFormField(
      controller: codeController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Código",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final sigupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueAccent.shade100,
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: register,
          color: Colors.blueAccent,
          child: Text(
            "Registrarse",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    return Container(
      child: new Center(
        child: new ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 30.0),
          children: <Widget>[
            fullname,
            SizedBox(height: 30.0),
            email,
            SizedBox(height: 30.0),
            cellphone,
            SizedBox(height: 30.0),
            username,
            SizedBox(height: 30.0),
            password,
            SizedBox(height: 30.0),
            pin,
            SizedBox(height: 30.0),
            code,
            SizedBox(height: 30.0),
            sigupButton
          ],
        ),
      ),
    );
  }
}
