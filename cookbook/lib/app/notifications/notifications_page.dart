import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  final String title;
  const NotificationsPage({Key key, this.title = "Notifications"})
      : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  Widget _appBarTitle = new Text("Notificações");
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
