import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:veggies_app/widgets/app_icon.dart';
import 'package:veggies_app/widgets/extandable_text.dart';
import 'package:veggies_app/widgets/text.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppIcon(icon: Icons.shopping_cart_checkout)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: GText(text: "Zanahoria")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 4, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/verdura1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                child: Extandable_text(
                    text:
                        "dl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdimpsum bla lab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdabdl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdimpsum bla lab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdabdl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdimpsum bla lab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab Lorem impsum bla labadl aasdfasdfa dfa fasdf asdf wdf Lorem impsum bla labadl aasdfasdfa dfa fasdf asdab"),
                margin: EdgeInsets.only(left: 20, right: 20),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20*2.5,right: 20*2.5, top:10,bottom:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: 24,
                    iconColor: Colors.white,
                    backgroundolor: Colors.blue,
                    icon: Icons.remove),
                    GText(text: "\$12.99"+" X "+"0"),
                AppIcon(
                  iconSize: 24,
                    iconColor: Colors.white,
                    backgroundolor: Colors.blue,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
              child: Icon(
                Icons.favorite, color: Colors.blue, size: 24,
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 18, left: 10, right: 20),
              child: GText(text: "\$Agrega",color: Colors.white,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
            )
          ],
        ),
      ),
        ],
      ),
    );
  }
}
