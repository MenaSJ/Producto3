import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggies_app/widgets/stext.dart';

class Extandable_text extends StatefulWidget {
  final String text;
  const Extandable_text({Key? key, required this.text}): super(key: key);

  @override
  State<Extandable_text> createState() => _Extandable_textState();
}

class _Extandable_textState extends State<Extandable_text> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = 200;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SText(size:15,text: firstHalf):Column(
        children: [
          SText(height: 1.8,color:Colors.black45,size:15,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SText(text: "Más", color:Colors.blue),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: Colors.blue)
              ],
            ),
          )
        ],
      ),
    );
  }
}