import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:na_dobro/model/widget/carousel.dart';

class CarouselWidget extends StatefulWidget {
  final List<CarouselItem> images;

  const CarouselWidget({Key key, this.images}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 217.0,
            viewportFraction: 1,
            initialPage: _currentIndex,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          carouselController: CarouselController(),
          items: widget.images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/main/${i.image}'),
                );
              },
            );
          }).toList(),
        ),
        Row(
          children: widget.images
              .map(
                (e) => Expanded(
                  child: Container(
                    height: 5,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    color: _currentIndex == widget.images.indexOf(e) ? Colors.white : Colors.white.withOpacity(0.5),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
