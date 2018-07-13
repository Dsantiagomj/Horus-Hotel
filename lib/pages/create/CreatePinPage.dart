import 'package:flutter/material.dart';

class CreatePin extends StatefulWidget {
  @override
  _CreatePinState createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  @override
  Widget build(BuildContext context) {
    final pin = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Pin",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final generateButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueAccent.shade100,
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {},
          color: Colors.blueAccent,
          child: Text(
            "Generar Pin",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueAccent.shade100,
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {},
          color: Colors.blueAccent,
          child: Text(
            "Registrar Pin",
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
            pin,
            SizedBox(height: 30.0),
            generateButton,
            registerButton
          ],
        ),
      ),
    );
  }
}
