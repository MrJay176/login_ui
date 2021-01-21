import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Login.dart';
import 'package:flutter_login/utils/Colorss.dart';
import 'package:flutter_login/utils/MyDialog.dart';
import 'Screens/SignUp.dart';
import 'Widgets/Button.dart';
import 'Widgets/OrWidget.dart';

class Columnn extends StatefulWidget {
  @override
  _ColumnState createState() => _ColumnState();
}

class _ColumnState extends State<Columnn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {

              MyDialog.progress(context , MediaQuery.of(context).size , execute:(){


                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return LogIn();
                }));

                 print("tapppe");
            });

            },
            child: Container(
              child: Button(
                btn_color: [
                  Colorss().color_one,
                  Colorss().color_two,
                  Colorss().color_three
                ],
                btn_text: "Log In",
                text_color: Colorss().text_color,
                border_color: Colorss().color_border,
                onPressed: () {},
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
            child: SizedBox(
              height: 40,
              child: OrWidget(),
            ),
          ),
          GestureDetector(
            onTap: () {

              MyDialog.progress(context , MediaQuery.of(context).size , execute:(){


                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));

                print("tapppe");
              });

            },
            child: Button(
              btn_color: [
                Colorss().color_transperent,
                Colorss().color_transperent
              ],
              btn_text: "Sign Up",
              border_color: Colorss().color_border,
              text_color: Colorss().text_color,
            ),
          ),
          SizedBox(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 35.0),
                        height: 1.0,
                        color: Colorss().text_color,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Text(
                    "MADE BY ROYALZ. V 1.0",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colorss().color_textField,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
