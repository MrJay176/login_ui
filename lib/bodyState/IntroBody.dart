import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Login.dart';
import 'package:flutter_login/Screens/SignUp.dart';
import 'package:flutter_login/Widgets/Button.dart';
import 'package:flutter_login/Widgets/OrWidget.dart';
import 'package:flutter_login/utils/Colorss.dart';
import 'package:flutter/cupertino.dart';

import '../IntroLo.dart';

class IntroBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroBodyState();
  }
}

class IntroBodyState extends State<IntroBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colorss().color_top, Colorss().color_bottom])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(1, 1, 1, 10),
                  height: 100.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colorss().color_one,
                          Colorss().color_two,
                          Colorss().color_three
                        ]),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        // color: Colorss().color_shadow,
                        offset: Offset(0.0, 0.25),
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child:Center(
                    child:Icon(Icons.ac_unit_rounded,
                    size:30,
                    color:Colors.white
                    )
                  ),
                ),
                Text(
                  "ARNELLE",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colorss().color_textField,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
                FittedBox(
                  child: Text(
                    "The Golden rule...Gold Always rules",
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colorss().color_textField,
                        fontFamily: "Italianno",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 8.0,
                  width: 50.0,
                  margin: EdgeInsets.only(top: 10.0),
                  color: Colorss().color_intro,
                ),
              ],
            ),
          ),
          Expanded(
            child: Columnn(),
          )
        ],
      ),
    );
  }
}
