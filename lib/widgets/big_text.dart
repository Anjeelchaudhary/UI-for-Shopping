import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  //This is for the Dynamic color,size,string and overflow of the text
  final Color? color; //Here ? means that color is optional to every text
  double size;
  final String text;
  TextOverflow overflow;

//Here const is removed because it does not  allows to hold the property dynamically
  BigText(
      {Key? key,
      //Here I have written theis code Color(0xFF332d2b) because
      //in order to make the default color we must write the exact naem of the color
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 20,
      //Here the ellopsis means that if the Name extends more than
      //given area then it will turn into dots and it is default property of flutter
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //Here evry code defines for the default one if user has not given the
      //custom requirements
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
