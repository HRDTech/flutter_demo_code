import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Drawer Demo'),
        ),
        drawerScrimColor: Colors.transparent,
        drawer: Container(
          width: 300,
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(180, 250, 250, 250),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(31, 38, 135, 0.4),
                  blurRadius: 8.0,
                )
              ],
              border: Border(
                  right: BorderSide(
                color: Colors.white70,
              ))),
          child: Stack(
            children: [
              SizedBox(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4.0,
                      sigmaY: 4.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.white.withOpacity(0.2),
                      ])),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  DrawerHeader(
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/play_store_512.png"),
                          radius: 30.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("Soluciones HR")
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {
                            DarkAlertBox(
                              context: context,
                              messageText: "Home Page ....",
                            );
                          },
                          leading: Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                          title: Text("Home Page"),
                        ),
                        ListTile(
                          onTap: () {
                            DarkAlertBox(
                                context: context,
                                messageText: "Profile Page ...");
                          },
                          leading: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          title: Text("Profile Page"),
                        ),
                        ListTile(
                          onTap: () {
                            DarkAlertBox(
                                context: context,
                                messageText: "Setting Page ...");
                          },
                          leading: Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          title: Text("Settings"),
                        ),
                        ListTile(
                          onTap: () {
                            ConfirmAlertBox(
                                context: context,
                                infoMessage: "Log Out Page ??..",
                                onPressedYes: () => {
                                      Navigator.pushReplacementNamed(
                                          context, "menu")
                                    });
                          },
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                          title: Text("Log Out"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/drawer.png"),
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
