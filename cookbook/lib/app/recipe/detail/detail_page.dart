import 'package:flutter/material.dart';
import 'package:cookbook/app/home/components/card_home/card_home/card_home_widget.dart';

import 'package:carousel_slider/carousel_slider.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String image;
  const DetailPage({Key key, this.title = "Brigadeiro Gourmet", this.image})
      : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFCE6),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CarouselSlider(
                        enableInfiniteScroll: false,
                        aspectRatio: 20 / 15, 
                        items: [
                          CardHomeWidget(
                            image: "brigadeiro1.jpg",
                            foodName: "Brigadeiro1",
                          ),
                          CardHomeWidget(
                            image: "brigadeiro2.jpg",
                            foodName: "Brigadeiro2",
                          ),
                          CardHomeWidget(
                            image: "brigadeiro3.jpg",
                            foodName: "Brigadeiro3",
                          ),
                        ]),
                  )
                ],
              )),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Ingredientes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Text(
                "1 caixa de leite condensado",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "1 colher (sopa) de margarina sem sal",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "4 colheres (sopa) de chocolate em pó",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Chocolate granulado",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Modo de preparo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "1° Em uma panela funda, acrescente o leite condensado, a margarina e o chocolate em pó.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "2° Cozinhe em fogo médio e mexa até que o brigadeiro comece a desgrudar da panela.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "3° Deixe esfriar e faça pequenas bolas com a mão passando a massa no chocolate granulado.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Informações adicionais",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Dica: quer saber quando o seu brigadeiro chegou no ponto certo? Passe a colher no meio da panela, fazendo um caminho. Se a mistura demorar a voltar para o meio e você conseguir enxergar o fundo da panela, está pronto. Se não, continue mexendo em fogo médio. Dica2: que tal preparar um delicioso brigadeiro e incrementar uma receita de bolo? Você sabia que a receita de brigadeiro como conhecemos hoje é um pouco diferente da original? Os primeiros brigadeiros eram feitos com leite, manteiga, ovos, açúcar e chocolate. Isso mesmo! Nada de leite condensado ou achocolatado em pó. ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Envie seu comentário", style: TextStyle(fontSize: 16),),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
