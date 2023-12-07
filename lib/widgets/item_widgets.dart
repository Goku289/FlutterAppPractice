import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print(item.name.toString());
        },
        leading: Image.network(item.image.toString()),
        title: Text(item.name.toString()),
        subtitle: Text(item.desc.toString()),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaler: TextScaler.linear(1.5),
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
