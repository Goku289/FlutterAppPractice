// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price!}"
                .text
                .bold
                .xl3
                .fontFamily('FontMain')
                .red800
                .make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluishColor),
                    ),
                    child: "Buy".text.color(MyTheme.creamColor).make())
                .wh(100, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image.toString()),
          ).h32(context),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  catalog.name!.text.xl4.bold
                      .fontFamily('FontMain')
                      .color(MyTheme.darkBluishColor)
                      .make(),
                  catalog.desc!.text.xl
                      .fontFamily('FontMain')
                      .textStyle(context.captionStyle)
                      .make(),
                ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
