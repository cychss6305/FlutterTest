import 'package:flutter/material.dart';
import '../product_manager.dart';
import 'products_admin.dart';

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
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductsAdminPage()
                          //按下去以後切到ProductsAdminPage頁面
                          ));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(title: Text('商品列表')),
        body: ProductManager(
            startingProduct: {"title": 'test', 'image': 'asset/123.png'}));
  }
}
