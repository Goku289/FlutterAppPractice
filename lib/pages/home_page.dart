import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello User"),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.green,
        child: Text('Welcome'),
      ),
      drawer: Drawer(),
    );
  }
}