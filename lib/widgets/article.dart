import 'package:flutter/material.dart';
import 'package:na_dobro/model/widget/article.dart';
import 'package:na_dobro/model/widget/support.dart';
import 'package:timeago/timeago.dart' as timeago;

const double widgetWidth = 220;
const double widgetHeight = 180;

class ArticleWidget extends StatefulWidget {
  final ArticleItem item;

  const ArticleWidget({Key key, this.item}) : super(key: key);

  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widgetWidth,
      height: widgetHeight,
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Color(widget.item.colorStart), Color(widget.item.colorEnd)],
          stops: [0.0, 0.2],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.item.author,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            widget.item.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
