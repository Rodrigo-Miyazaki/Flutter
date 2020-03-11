import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookbook/app/home/components/card_home/card_home/card_home_widget.dart';
import 'package:cookbook/app/home/components/card_home/card_home_text/card_home_text_widget.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key key, this.title = "Initial"}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  TextEditingController _filter = new TextEditingController();
  List names = new List();
  List filteredNames = new List(); // names filtered by search text
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Initial');
  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFFFFCE6),
        appBar: _buildBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 32, bottom: 8),
                  child: Column(
                    children: <Widget>[
                      CarouselSlider(
                        enlargeCenterPage: true,
                        aspectRatio: 29 / 25,
                        enableInfiniteScroll: false,
                        items: [
                          CardHomeTextWidget(
                            text: Text(
                              'Milkshake',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16.0,
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
                                  fontSize: 16.0,
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
                                  fontSize: 16.0,
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
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Align(
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
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CarouselSlider(
                      enableInfiniteScroll: false,
                      aspectRatio: 15 / 9,
                      items: [
                        CardHomeWidget(
                          image: "salada.png",
                          foodName: "Salada",
                          rate: 3,
                        ),
                        CardHomeWidget(
                          image: "doces.jpg",
                          foodName: "Brigadeiro",
                          rate: 5,
                        ),
                        CardHomeWidget(
                          image: "cupcake.jpg",
                          foodName: "CupCake",
                          rate: 4,
                        ),
                        CardHomeWidget(
                          image: "salgados.jpg",
                          foodName: "Coxinha",
                          rate: 4,
                        )
                      ]),
                ),
              ),
             
            ],
          ),
        ));
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
