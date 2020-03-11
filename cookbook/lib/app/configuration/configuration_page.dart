import 'package:cookbook/app/help/help_page.dart';
import 'package:cookbook/app/login/login_page.dart';
import 'package:cookbook/app/messages/messages_page.dart';
import 'package:cookbook/app/notifications/notifications_page.dart';
import 'package:cookbook/app/security/security_page.dart';
import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  final String title;
  const ConfigurationPage({Key key, this.title = "Configuration"})
      : super(key: key);

  @override
  _ConfigurationPageState createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  Widget _appBarTitle = new Text('Configurações');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFCE6),
        appBar: _buildBar(context),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensagens'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessagesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificações'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Segurança'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecurityPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Ajuda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
            ),
          ],
        ));
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: _appBarTitle,
    );
  }
}
