import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggies_app/main.dart';
import 'package:veggies_app/widgets/app_column.dart';
import 'package:veggies_app/widgets/app_icon.dart';
import 'package:veggies_app/widgets/extandable_text.dart';

import '../../widgets/icon_text.dart';
import '../../widgets/stext.dart';
import '../../widgets/text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/verdura1.jpg"))),
              )),
          Positioned(
              top: 35,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/Home_body",
                        );
                      },
                      child: AppIcon(icon: Icons.arrow_back_ios)),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: 350 - 20,
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Zanahoria"),
                    SizedBox(
                      height: 20,
                    ),
                    GText(text: "Introduce"),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Extandable_text(
                          text:
                              "Lorem impsum bla lab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdimpsum bla lab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asd"),
                    ))
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 235, 235),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20 * 2),
              topRight: Radius.circular(20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 18, bottom: 18, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(children: [
                Icon(Icons.remove, color: Color.fromARGB(255, 107, 231, 208)),
                SizedBox(
                  width: 10 / 2,
                ),
                GText(text: "0"),
                SizedBox(
                  width: 10 / 2,
                ),
                Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 107, 231, 208),
                ),
              ]),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 14, bottom: 18, left: 10, right: 20),
              child: GText(
                text: "\$10 | Agrega",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
