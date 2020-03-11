import 'package:cookbook/app/recipe/detail/detail_page.dart';
import 'package:flutter/material.dart';

class CardHomeWidget extends StatefulWidget {
  final String image;
  final String foodName;
  final int rate;

  CardHomeWidget({Key key, this.image, @required this.foodName, this.rate = 0})
      : super(key: key);

  CardHomeWidgetState createState() => CardHomeWidgetState();
}

class CardHomeWidgetState extends State<CardHomeWidget> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return Container(margin: EdgeInsets.only(left: 12, right: 12 ,bottom: 24),
     child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
            child: new SizedBox(
              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/images/${widget.image}",
                    fit: BoxFit.cover,
                  ),
                ),
                elevation: 5,
              ),
            ),
          ),
          flex: 8,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) {
                return index < widget.rate
                    ? const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 24,
                      )
                    : const Icon(Icons.star_border, color: Colors.amber);
              }),
            ),
          ),
          flex: 1,
        ),


        /* Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10.0,
                  color: Color(0xFFFFFDCC),
                  child: Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/${widget.image}"),
                      fit: BoxFit.cover,
                    ),
                  )),
                ), */
      ],
    ));
    

    /* Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10.0,
          color: Color(0xFFFFFDCC),
            child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/${widget.image}"),
                fit: BoxFit.cover,
              ),
            )),
          
        ), */
  }
}
