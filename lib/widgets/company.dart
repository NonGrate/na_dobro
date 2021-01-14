import 'package:flutter/material.dart';
import 'package:na_dobro/model/widget/article.dart';
import 'package:na_dobro/model/widget/company.dart';
import 'package:na_dobro/model/widget/support.dart';
import 'package:timeago/timeago.dart' as timeago;

class CompanyWidget extends StatefulWidget {
  final CompanyItem item;

  const CompanyWidget({Key key, this.item}) : super(key: key);

  @override
  _CompanyWidgetState createState() => _CompanyWidgetState();
}

class _CompanyWidgetState extends State<CompanyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            padding: EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/main/${widget.item.image}",
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(42),
            ),
          ),
          SizedBox(width: 16.0),
          Text(
            widget.item.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
