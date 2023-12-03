import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello User"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to your first project'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
