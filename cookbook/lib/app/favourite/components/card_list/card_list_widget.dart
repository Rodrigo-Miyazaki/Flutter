import 'package:cookbook/app/recipe/detail/detail_page.dart';
import 'package:flutter/material.dart';

class CardListWidget extends StatefulWidget {
  final int rate;
  final String image;
  final String name;
  CardListWidget({Key key, this.rate = 0, @required this.image, @required this.name }) : super(key: key);

  CardListWidgetState createState() => CardListWidgetState();
}

class CardListWidgetState extends State<CardListWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),side: BorderSide( color: Colors.black12, width: 2, ), ),
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: <Widget>[
              ClipRRect(child: Image.asset(
                "assets/images/"+ widget.image,
                
                width: screenSize.width * 0.3,
              ),
               borderRadius: BorderRadius.circular(8.0),
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: screenSize.width * 0.4,
                    margin: const EdgeInsets.only(left: 16),
                    child: Text(
                      widget.name,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.4,
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return index < widget.rate
                            ? const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 24,
                              )
                            : const Icon(Icons.star_border,
                                color: Colors.amber);
                      }),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
