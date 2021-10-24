import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';

Card Card_1(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Card Uno'),
          subtitle: Text(
              'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          leading: Image.asset(
            "assets/images/play_store_512.png",
            width: 72.0,
            height: 72.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                onPressed: () => {
                      SuccessAlertBox(
                        context: context,
                        messageText: "Click button Aceptar",
                      )
                    },
                child: Text('Aceptar')),
            TextButton(
                onPressed: () => {
                      SuccessAlertBox(
                        context: context,
                        messageText: "Click button Cancelar",
                      )
                    },
                child: Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

Card Card_2() {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/auto_1.png",
              fit: BoxFit.contain,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Auto ...'),
            ),
          ],
        ),
      ));
}

Card Card_3() {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset('assets/images/auto_2.png')));
}
