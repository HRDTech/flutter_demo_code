// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              // ignore: sized_box_for_whitespace
              //--------------Row Menu 1---------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/fingerprint_image.jpeg",
                          width: 90.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Fingerprint with Flutter"),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'fingerprint')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/dialog.png",
                          width: 90.0,
                          height: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Awesome Dialog In Flutter"),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'AwesomeDialog')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  )
                ],
              ),
              //==============End Menu 1===========================
              const SizedBox(height: 40),
              // ignore: sized_box_for_whitespace
              //--------------Row Menu 2---------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/card.gif",
                          width: 90.0,
                          height: 90.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Cards en Flutter"),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'card')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/logo_drawer.png",
                          width: 90.0,
                          height: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Glass Morphism Navigation Drawer using Flutter",
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'drawer')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              // ignore: sized_box_for_whitespace
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/fade.gif",
                          width: 90.0,
                          height: 100.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("ImageFade"),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'fade')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 220,
                    width: 190,
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.asset(
                          "assets/menu/carousel.gif",
                          width: 90.0,
                          height: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Carousel slider in Flutter"),
                        TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, 'carousel')},
                          child: Text("View"),
                        )
                      ]),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(10.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
