import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Login.dart';
import 'package:flutter_login/Widgets/AppBar.dart';
import 'package:flutter_login/Widgets/AppBar.dart';

import 'package:flutter_login/Widgets/Button.dart';
import 'package:flutter_login/Widgets/OrWidget.dart';
import 'package:flutter_login/Widgets/TermsContainer.dart';
import 'package:flutter_login/Widgets/TextField.dart';
import 'package:flutter_login/utils/Colorss.dart';

class SignUpBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroBodyState();
  }
}

class IntroBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colorss().color_top, Colorss().color_bottom])),
        child: Column(
          children: [
            AppBarr(
              title: "Sign Up",
              background_color: Colorss().color_top,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Colorss().color_top, Colorss().color_bottom])),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Join us",
                                style: TextStyle(
                                    fontSize: 27.0,
                                    color: Colorss().color_textField,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                              TextFieldd(
                                  isPassword: false,
                                  hint_text: "Username",
                                  label_text: "Username",
                                  borderColor: Colorss().text_color),
                              TextFieldd(
                                  isPassword: true,
                                  hint_text: "Password",
                                  label_text: "Password",
                                  borderColor: Colorss().text_color),
                              TextFieldd(
                                  isPassword: true,
                                  label_text: "Repeat Password",
                                  hint_text: "Repeat Password",
                                  borderColor: Colorss().text_color),
                              TextFieldd(
                                  isPassword: false,
                                  label_text: "Email",
                                  hint_text: "Email address",
                                  borderColor: Colorss().text_color),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(25.0, 10, 25, 8),
                            child: Row(
                              children: [
                                TermsContainer(
                                  isslected: false,
                                  border_color: Colorss().text_color,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "AGREE TO OUR ",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colorss().color_textField,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.normal),
                                ),
                                Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "TERMS",
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colorss().color_textField,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 1.2,
                                          width: 29.0,
                                          color: Colorss().text_color,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Button(
                            btn_color: [
                              Colorss().color_one,
                              Colorss().color_two,
                              Colorss().color_three
                            ],
                            btn_text: "Sign up",
                            border_color: Colorss().color_border,
                            text_color: Colorss().text_color,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OrWidget(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return LogIn();
                              }));
                            },
                            child: Button(
                              btn_color: [
                                Colorss().color_transperent,
                                Colorss().color_transperent
                              ],
                              btn_text: "Login",
                              border_color: Colorss().color_border,
                              text_color: Colorss().text_color,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
