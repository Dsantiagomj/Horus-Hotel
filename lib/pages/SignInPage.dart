import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña",
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
          onPressed: () {
            Navigator.of(context).pushNamed("/HotelHomePage");
          },
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
              SizedBox(height: 75.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton
            ]),
      ),
    );
  }
}
