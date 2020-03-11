import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  final String title;
  const FavouritePage({Key key, this.title = "Favourite"}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  Widget _appBarTitle = new Text('Favoritos');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCE6),
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
