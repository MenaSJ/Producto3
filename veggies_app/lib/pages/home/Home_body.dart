import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggies_app/pages/food/popular_food_detail.dart';
import 'package:veggies_app/widgets/app_column.dart';
import 'package:veggies_app/widgets/icon_text.dart';
import 'package:veggies_app/widgets/stext.dart';
import 'package:veggies_app/widgets/text.dart';

class Home_body extends StatefulWidget {
  const Home_body({super.key});

  @override
  State<Home_body> createState() => _Home_bodyState();
}

class _Home_bodyState extends State<Home_body> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _paginaActual = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                "/popular",
              );
            },
            child: PageView.builder(
                controller: pageController,
                itemCount: 10,
                itemBuilder: (context, position) {
                  return _ConstruirItem(position);
                }),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GText(text: "Recomendado"),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: GText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: SText(text: "Frutas y Verduras"),
              )
            ],
          ),
        ),
        Container(
          height: 700,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              //shrinking: true
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/recommend",
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10, bottom: 10),
                    child: Row(
                      children: [
                        //image section
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white38,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/image/verdura1.jpg"))),
                        ),
                        //text container
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GText(text: "Papayas"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SText(text: "son naranjas"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
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
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  Widget _ConstruirItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/verdura1.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 10),
              child: AppColumn(
                text: "Zanahoria",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
