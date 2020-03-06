import 'package:flutter/material.dart';

class CardHomeTextWidget extends StatefulWidget {
  final Text text;
  final int textFlex;
  final int imageFlex;
  final String image; 
  CardHomeTextWidget({Key key, this.text, this.textFlex, this.imageFlex, this.image})
      : super(key: key);

  CardHomeTextWidgetState createState() => CardHomeTextWidgetState();
}

class CardHomeTextWidgetState extends State<CardHomeTextWidget> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left:8, right: 8),
        //width: screenSize.width * 0.6,
        //height: screenSize.height * 0.4,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10.0,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 16),
                child: widget.text,
              ),
              Expanded(
                flex: widget.imageFlex,
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/${widget.image}"),
                    fit: BoxFit.cover,
                  ),
                )),
              )
            ],
          ),
        ));
  }
}
