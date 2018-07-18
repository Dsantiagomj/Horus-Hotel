import 'package:flutter/material.dart';
import './SignInPage.dart' as first;
import './SignUpPage.dart' as second;

class Login extends StatefulWidget {
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TabController controller;
  static String login = "Iniciar Sesión";
  static String signup = "Registrarse";
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
        title: new Text("Horus Hotel app"),
        backgroundColor: Colors.blueAccent,
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[new Tab(text: login), new Tab(text: signup)],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[new first.SignIn(), new second.SignUp()],
      ),
    );
  }
}
