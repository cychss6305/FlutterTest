import 'package:firstproject/pages/home.dart';
import 'package:flutter/material.dart';

import '../product_create.dart';
import '../product_list.dart';
import '../products.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //有tab的組件最外層
      length: 2,
      //兩個tab
      child: Scaffold(
        drawer: Drawer(
          //這一頁的收合選單是切換回products.dart
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Products'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            //把tab放在bottom屬性裡面
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ProductCreatePage(), ProductListPage()],
          //對應上面的順序，切換的頁面
        ),
      ),
    );
  }
}
