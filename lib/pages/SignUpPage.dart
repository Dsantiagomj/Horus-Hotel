import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final fullname = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Nombre Completo",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final cellphone = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Celular",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final username = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Usuario",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final pin = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Pin",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final code = TextFormField(
      keyboardType: TextInputType.number,
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
          onPressed: () {
            Navigator.of(context).pushNamed("/HotelHomePage");
          },
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
