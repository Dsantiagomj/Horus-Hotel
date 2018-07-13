import 'package:flutter/material.dart';

class HotelList extends StatefulWidget {
  @override
  _HotelListState createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'horus_logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 125.0,
        child: Image.asset('assets/logo.png'),
      ),
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
            Navigator.of(context).pushNamed("/HotelCreate");
          },
          color: Colors.blueAccent,
          child: Text(
            "Crear Hotel",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de Hoteles"),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Username"),
                accountEmail: new Text("user@email.com"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        "http://tnfu.ac.in/img/profile/160439default_profile_pic.jpg"),
                  ),
                ),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://vignette.wikia.nocookie.net/steamtradingcards/images/c/c0/Waveform_Background_Earth_Horizon.jpg/revision/latest/scale-to-width-down/640?cb=20150404025954"))),
              ),
              new ListTile(
                  title: new Text("Mis Hoteles"),
                  trailing: new Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/HotelList");
                  }),
              new ListTile(
                  title: new Text("Actualizar datos"),
                  trailing: new Icon(Icons.account_box),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/Update");
                  }),
              new ListTile(
                  title: new Text("Configuración"),
                  trailing: new Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/Settings");
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("Salir"),
                  trailing: new Icon(Icons.close),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/Login");
                  })
            ],
          ),
        ),
        body: new Container(
          child: new Center(
            child: new ListView(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 30.0),
              children: <Widget>[
                logo,
                SizedBox(
                  height: 35.0,
                ),
                createButton,
                SizedBox(height: 8.0)
              ],
            ),
          ),
        ));
  }
}
