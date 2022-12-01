import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggies_app/widgets/stext.dart';

import 'icon_text.dart';
import 'text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GText(text: text, size: 26,),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(Icons.star, size: 15);
              }),
            ),
            SizedBox(
              width: 10,
            ),
            SText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SText(text: "224"),
            SizedBox(
              width: 10,
            ),
            SText(text: "comments")
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(
                icon: Icons.circle_sharp,
                text: "vegetal",
                iconColor: Colors.orange),
            IconText(
                icon: Icons.favorite,
                text: "41 calorias x 100g",
                iconColor: Colors.red)
          ],
        )
      ],
    );
  }
}
