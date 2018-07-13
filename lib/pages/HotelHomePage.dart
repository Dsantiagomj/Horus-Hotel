import 'package:flutter/material.dart';
import './hotel/HotelRoomsPage.dart' as first;
import './hotel/HotelStatisticsPage.dart' as second;

class HotelHomePage extends StatefulWidget {
  HotelHomePageState createState() => HotelHomePageState();
}

class HotelHomePageState extends State<HotelHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Horus Hotel"),
          backgroundColor: Colors.blueAccent,
          bottom: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.local_hotel)),
              new Tab(icon: new Icon(Icons.local_convenience_store))
            ],
          ),
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
                  title: new Text("Gráficas"),
                  trailing: new Icon(Icons.pie_chart),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/Chart");
                  }),
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
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new first.HotelRooms(),
            new second.HotelStatistics()
          ],
        ));
  }
}
