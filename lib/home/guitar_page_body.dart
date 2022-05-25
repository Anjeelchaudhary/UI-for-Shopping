import 'package:flutter/material.dart';

class GuitarPageBody extends StatefulWidget {
  GuitarPageBody({Key? key}) : super(key: key);

  @override
  State<GuitarPageBody> createState() => _GuitarPageBodyState();
}

class _GuitarPageBodyState extends State<GuitarPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      //Here pageView.builder is for the transitioning of the
      //diffenent wigits
      child: PageView.builder(
          itemCount: 5, //here 5 itemCount is default value
          //itemBuilder takes function and no of itemCount and position is connectd to each other
          //becuse the transition starts from zero to four
          itemBuilder: (context, position) {
            //_buildPageItem is used because I want something that scrolls left and right
            //and it takes two item ie: position and
            return _buildPageItem(position);
          }),
    );
    //here we have to declare the function of _buildPageItem
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          //here to differentiate the color
          //even widgets is made blue and other made purple
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
          image:  DecorationImage(
              image: AssetImage("assets/image/guitarPiano.png"))),
    );
  }
}
