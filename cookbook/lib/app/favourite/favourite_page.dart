import 'package:cookbook/app/favourite/components/card_list/card_list_widget.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CardListWidget(
                image: "doces.jpg",
                name: "Brigadeiro",
                rate: 5,
              ),
              CardListWidget(
                image: "milkshake.png",
                name: "Milk Shake",
                rate: 4,
              ),
              CardListWidget(
                image: "nuggets.png",
                name: "Frango",
                rate: 5,
              ),
              CardListWidget(
                image: "Salada1.png",
                name: "Salada",
                rate: 3,
              ),
              CardListWidget(
                image: "salgados.jpg",
                name: "Salgados",
                rate: 3,
              ),
              CardListWidget(
                image: "doces.jpg",
                name: "Brigadeiro",
                rate: 5,
              ),
            ],
          ),
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
