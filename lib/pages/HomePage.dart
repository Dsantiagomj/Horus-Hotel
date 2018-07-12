import 'package:flutter/material.dart';
import './RoomsPage.dart' as first;
import './HotelPage.dart' as second;
import './ChartsPage.dart' as third;

class HomePage extends StatefulWidget{
  HomePageState createState()=>  HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }
  @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context){
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
      drawer:new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Gustavo Morales"),
              accountEmail: new Text("gmoralesc@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage("https://avatars0.githubusercontent.com/u/760122?s=400&v=4"),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image:new NetworkImage("https://vignette.wikia.nocookie.net/steamtradingcards/images/c/c0/Waveform_Background_Earth_Horizon.jpg/revision/latest/scale-to-width-down/640?cb=20150404025954")
                )
              ),
            ),
            new ListTile(
              title: new Text("First Page"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/Chart");
              }
            ),
            new ListTile(
              title: new Text("Second Page"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap:(){
                Navigator.of(context).pop();
              }
            )
          ],
        ),
      ) ,
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.Rooms(),
          new second.Hotel()
        ],
      )
    );
  }
}
 