import 'package:cookbook/app/configuration/configuration_page.dart';
import 'package:cookbook/app/favourite/favourite_page.dart';
import 'package:cookbook/app/initial/initial_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [
    InitialPage(),
    FavouritePage(),
    ConfigurationPage()
  ];
  int _selectedIndex = 0;

  List names = new List();
  List filteredNames = new List(); // names filtered by search text


  @override
  Widget build(BuildContext context) {
    
    // var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFFFFCE6),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favoritos'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red[800],
          onTap: _onItemTapped,
        ),
        body: _children[_selectedIndex]);
        
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


}