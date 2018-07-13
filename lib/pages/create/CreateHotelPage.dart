import 'package:flutter/material.dart';

class CreateHotel extends StatefulWidget {
  @override
  _CreateHotelState createState() => _CreateHotelState();
}

class _CreateHotelState extends State<CreateHotel> {
  @override
  Widget build(BuildContext context) {
    final hotelName = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Nombre del hotel",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final nit = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Nit",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final address = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Dirección",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final phoneNumber = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Teléfono",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final city = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Ciudad",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final average = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Promedio de ventas",
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
    final createButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueAccent.shade100,
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed("/HotelList");
          },
          color: Colors.blueAccent,
          child: Text(
            "Crear Hotel",
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
            hotelName,
            SizedBox(height: 30.0),
            nit,
            SizedBox(height: 30.0),
            address,
            SizedBox(height: 30.0),
            phoneNumber,
            SizedBox(height: 30.0),
            city,
            SizedBox(height: 30.0),
            average,
            SizedBox(height: 30.0),
            pin,
            SizedBox(height: 30.0),
            createButton
          ],
        ),
      ),
    );
  }
}
