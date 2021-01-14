import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:na_dobro/theme/themes.dart';
import 'package:na_dobro/widgets/carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Na Dobro',
      theme: ThemeData(
        primarySwatch: MAIN_COLOR_MATERIAL,
      ),
      home: MyHomePage(title: 'Hlavní stránka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var carouselItems = ["carousel1.png", "carousel2.png", "carousel3.png", "carousel4.png"];

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: MAIN_COLOR,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselWidget(images: widget.carouselItems),
                    demand(),
                    articles(),
                    companies(),
                    partners(),
                  ],
                ),
              ),
            ),
            navbar(),
          ],
        ),
      ),
    );
  }

  Widget demand() {
    return Container();
  }

  Widget articles() {
    return Container();
  }

  Widget companies() {
    return Container();
  }

  Widget partners() {
    return Container();
  }

  Widget navbar() {
    return Container();
  }
}
