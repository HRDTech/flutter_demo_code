import 'package:flutter/material.dart';
import 'package:flutter_demo_code/widget/Card_Custom.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Demo Code'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Card_1(context),
            const SizedBox(
              height: 10.0,
            ),
            Card_2(),
            const SizedBox(
              height: 10.0,
            ),
            Card_3(),
          ],
        ),
      ),
    );
  }
}
