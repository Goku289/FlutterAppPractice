import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to your first project my Nigga'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
