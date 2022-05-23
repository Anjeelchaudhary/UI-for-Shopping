import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  //This is for the Dynamic color,size,string and overflow of the text
  final Color? color; //Here ? means that color is optional to every text
  double size;
  double height;
  final String text;

//Here const is removed because it does not  allows to hold the property dynamically
  SmallText({
    Key? key,
    //Here I have written theis code Color(0xFFccc7c5) because
    //in order to make the default color we must write the exact naem of the color
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.height = 1.2,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //Here evry code defines for the default one if user has not given the
      //custom requirements
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Roboto',
        height: height,
      ),
    );
  }
}
