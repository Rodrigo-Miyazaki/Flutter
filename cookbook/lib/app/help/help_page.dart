import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  final String title;
  const HelpPage({Key key, this.title = "Help"}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  Widget _appBarTitle = new Text("Ajuda");

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
