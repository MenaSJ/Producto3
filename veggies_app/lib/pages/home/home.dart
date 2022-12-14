import 'package:flutter/material.dart';
import 'package:veggies_app/pages/home/Home_body.dart';
import 'package:veggies_app/widgets/stext.dart';
import 'package:veggies_app/widgets/text.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GText(
                        text: "Mexico",
                        size: 30,
                      ),
                      Row(
                        children: [
                          SText(
                            text: "Puebla",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/profile",
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Home_body(),
        )),
      ],
    ));
  }
}
