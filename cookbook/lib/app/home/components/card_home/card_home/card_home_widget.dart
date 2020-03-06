import 'package:cookbook/app/recipe/detail/detail_page.dart';
import 'package:flutter/material.dart';

class CardHomeWidget extends StatefulWidget {
  final String image;
  final String foodName;
  CardHomeWidget({Key key, this.image, @required this.foodName})
      : super(key: key);

  CardHomeWidgetState createState() => CardHomeWidgetState();
}

class CardHomeWidgetState extends State<CardHomeWidget> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(image: widget.image,)),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10.0,
          color: Color(0xFFFFFDCC),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/${widget.image}"),
                    fit: BoxFit.cover,
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
