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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
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
                      backgroundColor: MaterialStateProperty.all(
                          context.theme.highlightColor),
                    ),
                    child: "Add to Cart".text.color(MyTheme.creamColor).make())
                .wh(125, 50)
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
              color: context.cardColor,
              child: Column(
                children: [
                  catalog.name!.text.xl4.bold
                      .fontFamily('FontMain')
                      .color(context.theme.primaryColorLight)
                      .make(),
                  catalog.desc!.text.xl
                      .color(context.theme.primaryColorLight)
                      .fontFamily('FontMain')
                      .textStyle(context.captionStyle)
                      .make(),
                  10.heightBox,
                  "Sed at consetetur voluptua ea sed. Kasd et sanctus sed accusam accusam. Duo et dolore eos dolor amet. Eos accusam vero dolor sed, ipsum amet sanctus et eirmod duo, dolor rebum gubergren sanctus ipsum takimata justo, sed dolor eos ipsum lorem consetetur, lorem sit amet lorem vero diam ipsum. Kasd."
                      .text
                      .color(context.theme.primaryColorLight)
                      .textStyle(context.captionStyle)
                      .fontFamily('FontMain')
                      .make()
                      .p16()
                ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
