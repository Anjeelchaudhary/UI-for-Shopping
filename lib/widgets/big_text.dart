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
      required this.color,
      required this.text,
      required this.size,
      //Here the ellopsis means that if the Name extends more than given area then it will turn into dots and it is default property of flutter
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
