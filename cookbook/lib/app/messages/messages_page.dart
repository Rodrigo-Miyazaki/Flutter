import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  final String title;
  const MessagesPage({Key key, this.title = "Messages"}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  Widget _appBarTitle = new Text("Mensagens");
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
