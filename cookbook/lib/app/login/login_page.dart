import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List names = new List();
  List filteredNames = new List(); // names filtered by search text
  Widget _appBarTitle = new Text('Login');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFFFCE6),
      appBar: _buildBar(context),
      body: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,  
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text("Text"),
        )
        ],
      ),
      ) 
    );
  }

    Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: _appBarTitle,
    );
  }
}
