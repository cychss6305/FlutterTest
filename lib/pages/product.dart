import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(title: Text(title)),
            body: Center(
              child: Column(children: <Widget>[
                Text(title),
                ElevatedButton(
                  child: Text('Back'),
                  onPressed: () => Navigator.pop(context),
                  //style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 41, 70, 199))
                ),
                ElevatedButton(
                  child: Text('Delete'),
                  onPressed: () => Navigator.pop(context, true),
                  //style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 41, 70, 199))
                )
              ]),
            )));
  }
}
