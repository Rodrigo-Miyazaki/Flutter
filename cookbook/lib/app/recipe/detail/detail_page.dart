import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String image;
  const DetailPage({Key key, this.title = "Detail", this.image})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage("assets/images/${widget.image}"),
              fit: BoxFit.cover,
            ),
          )),
        ],
      ),
    );
  }
}
