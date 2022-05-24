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
    return Container();
  }
}
