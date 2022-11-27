import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home_body extends StatefulWidget {
  const Home_body({super.key});

  @override
  State<Home_body> createState() => _Home_bodyState();
}

class _Home_bodyState extends State<Home_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, position) {
            return _ConstruirItem(position);
          }),
    );
  }

  Widget _ConstruirItem(int index) {
    return Stack(
      children: [
        Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
          image: DecorationImage(
              fit:BoxFit.cover,
              image: AssetImage(
                "assets/image/verdura1.jpg"
              )
          )
        ),
    ),
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 140,
        margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:Colors.white,
            )
          ),
      ),
      ],
    );
  }
}
