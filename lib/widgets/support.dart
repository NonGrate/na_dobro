import 'package:flutter/material.dart';
import 'package:na_dobro/model/widget/support.dart';
import 'package:timeago/timeago.dart' as timeago;

const Color newColor = Color(0xFF5458E4);
const Color progressColor = Color(0xFF5458E4);
const Color successColor = Color(0xFF18B271);
const Color failColor = Color(0xFFE45454);
const Color timeColor = Color(0xFF79797D);

const double widgetWidth = 186;
const double widgetHeight = 480;

class SupportWidget extends StatefulWidget {
  final SupportItem item;

  const SupportWidget({Key key, this.item}) : super(key: key);

  @override
  _SupportWidgetState createState() => _SupportWidgetState();
}

class _SupportWidgetState extends State<SupportWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widgetWidth,
      height: widgetHeight,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset("assets/main/${widget.item.image}"),
              widget.item.isNew
                  ? Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: newColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Nové", style: TextStyle(color: Colors.white),),
                  )
                  : Container(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            widget.item.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          stateText(widget.item.state, widget.item.patrons),
          SizedBox(
            height: 16,
          ),
          stateProgress(widget.item.state, widget.item.patrons, widget.item.patronsGoal),
          SizedBox(
            height: 16,
          ),
          expirationTime(widget.item.state, widget.item.endDate),
        ],
      ),
    );
  }

  Widget stateText(SupportState state, int patrons) {
    switch (state) {
      case SupportState.FULFILLED:
        return Row(
          children: [
            Expanded(
              child: Text(
                "$patrons patronů",
                style: TextStyle(color: progressColor),
              ),
            ),
            Icon(
              Icons.check,
              color: progressColor,
              size: 16.0,
            )
          ],
        );
      case SupportState.SUCCESSFUL:
        return Row(
          children: [
            Expanded(
              child: Text(
                "$patrons patronů",
                style: TextStyle(color: successColor),
              ),
            ),
            Icon(
              Icons.check,
              color: successColor,
              size: 16.0,
            )
          ],
        );
      case SupportState.FAILED:
        return Row(
          children: [
            Expanded(
              child: Text(
                "$patrons patronů",
                style: TextStyle(color: failColor),
              ),
            ),
            Icon(
              Icons.close,
              color: failColor,
              size: 16.0,
            )
          ],
        );
      case SupportState.IN_PROGRESS:
      default:
        return Text(
          "Již pomáhá $patrons patronů",
          style: TextStyle(color: Colors.white),
        );
    }
  }

  Widget stateProgress(SupportState state, int patrons, int patronsGoal) {
    var progressWidth = widgetWidth * (patrons / patronsGoal);
    var color = progressColor;

    switch (state) {
      case SupportState.SUCCESSFUL:
        color = successColor;
        break;
      case SupportState.FAILED:
        color = failColor;
        break;
      default:
        break;
    }

    return Container(
      height: 8,
      width: widgetWidth,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: Container(
        width: progressWidth,
        color: color,
      ),
    );
  }

  Widget expirationTime(SupportState state, DateTime endDate) {
    timeago.setLocaleMessages('cs', timeago.CsMessages());
    if (state == SupportState.SUCCESSFUL || state == SupportState.FAILED) {
      return Container();
    } else {
      return Row(
        children: [
          Icon(Icons.access_time, color: timeColor),
          SizedBox(width: 4),
          Text(
            timeago.format(endDate, locale: 'cs', allowFromNow: true),
            style: TextStyle(color: timeColor),
          ),
        ],
      );
    }
  }
}
