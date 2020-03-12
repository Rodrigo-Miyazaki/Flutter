import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  final String title;
  const SecurityPage({Key key, this.title = "Security"}) : super(key: key);

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
    Widget _appBarTitle = new Text("Segurança");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: Column(
        children: <Widget>[],
      ),
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
