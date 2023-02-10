import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Products'),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(title: Text('商品列表')),
        body: ProductManager(
            startingProduct: {"title": 'test', 'image': 'asset/123.png'}));
  }
}
