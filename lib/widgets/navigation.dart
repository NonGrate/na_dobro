import 'package:flutter/material.dart';

const double widgetHeight = 64;

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Favorites"),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/navigation/favorites.png",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Main"),
              ));},
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/navigation/main.png",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Profile"),
              ));},
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/navigation/profile.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
