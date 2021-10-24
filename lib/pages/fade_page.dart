import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_fade/image_fade.dart';

class FadePage extends StatefulWidget {
  const FadePage({Key? key}) : super(key: key);

  @override
  _FadePageState createState() => _FadePageState();
}

class _FadePageState extends State<FadePage> {
  ImageProvider image =
      const NetworkImage('https://coffee.alexflipnote.dev/random');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade Demo Code'),
      ),
      body: Stack(children: <Widget>[
        Positioned.fill(
          child: ImageFade(
            image: image,
            placeholder: Container(
              color: Color(0xFFCFCDCA),
              child: Center(
                  child: Icon(
                Icons.photo,
                color: Colors.white30,
                size: 128.0,
              )),
            ),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }
}
