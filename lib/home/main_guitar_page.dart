import 'package:flutter/material.dart';
import 'package:project_fourth_sem/utils/colors.dart';
import 'package:project_fourth_sem/widgets/big_text.dart';
import 'package:project_fourth_sem/widgets/small_text.dart';

import 'guitar_page_body.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 10),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Kathmandu",
                        color: AppColors.mainColor,
                      ),
                      //Here Row is used to make a small text and the icon in the same line
                      Row(
                        children: [
                          SmallText(
                            text: "Place",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GuitarPageBody(),
        ],
      ),
    );
  }
}
