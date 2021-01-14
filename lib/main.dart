import 'package:flutter/material.dart';
import 'package:na_dobro/theme/themes.dart';
import 'package:na_dobro/widgets/article.dart';
import 'package:na_dobro/widgets/carousel.dart';
import 'package:na_dobro/widgets/support.dart';

import 'data.dart';

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
                    CarouselWidget(images: carouselItems),
                    SizedBox(height: 32),
                    demand(),
                    SizedBox(height: 16),
                    Container(
                      height: 0.5,
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    SizedBox(height: 16),
                    articles(),
                    SizedBox(height: 32),
                    companies(),
                    SizedBox(height: 32),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Vyřešíme v Česku #naDobro",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 400, // needed for ListView renderbox generation
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: demandItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SupportWidget(item: demandItems[index]);
            },
          ),
        )
      ],
    );
  }

  Widget articles() {
    return Container(
      height: 160, // needed for ListView renderbox generation
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: articleItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ArticleWidget(item: articleItems[index]);
        },
      ),
    );
  }

  Widget companies() {
    return Container();
  }

  Widget partners() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Řeší s námi naDobro",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 400, // needed for ListView renderbox generation
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: partnersItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SupportWidget(item: partnersItems[index]);
            },
          ),
        )
      ],
    );
  }

  Widget navbar() {
    return Container();
  }
}
