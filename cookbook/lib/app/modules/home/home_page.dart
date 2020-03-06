import 'package:cookbook/app/home/components/card_home/card_home/card_home_widget.dart';
import 'package:cookbook/app/home/components/card_home/card_home_text/card_home_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  TextEditingController _filter = new TextEditingController();
  List names = new List();
  List filteredNames = new List(); // names filtered by search text
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Home');
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
      appBar: _buildBar(context),
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 8),
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    enlargeCenterPage: true,
                    aspectRatio: 24 / 23,
                    enableInfiniteScroll: false,
                    items: [
                      CardHomeTextWidget(
                        text: Text(
                          'Milkshake',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        imageFlex: 1,
                        image: "milkshake.png",
                      ),
                      CardHomeTextWidget(
                        text: Text(
                          'Frango',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        imageFlex: 1,
                        image: "nuggets.png",
                      ),
                      CardHomeTextWidget(
                        text: Text(
                          'Pão de queijo',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        imageFlex: 1,
                        image: "paodequeijo.png",
                      ),
                    ],
                    //height: screenSize.height * 0.4,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 8, bottom: 16),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 8,
                            bottom: 8),
                        child: Text(
                          "Destaques",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CarouselSlider(
                        enableInfiniteScroll: false,
                        aspectRatio: 20 / 9,
                        items: [
                          CardHomeWidget(
                            image: "salada.png",
                            foodName: "Salada",
                          ),
                          CardHomeWidget(
                            image: "doces.jpg",
                            foodName: "Brigadeiro",
                          ),
                          CardHomeWidget(
                            image: "cupcake.jpg",
                            foodName: "CupCake",
                          ),
                          CardHomeWidget(
                            image: "salgados.jpg",
                            foodName: "Coxinha",
                          )
                        ]),
                  )
                ],
              )),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Home');
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: _appBarTitle,
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,

      ),
    );
  }
}
