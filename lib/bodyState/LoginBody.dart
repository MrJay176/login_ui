import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/ForgottenPassword.dart';
import 'package:flutter_login/Screens/SignUp.dart';
import 'package:flutter_login/Widgets/AppBar.dart';
import 'package:flutter_login/Widgets/Button.dart';
import 'package:flutter_login/Widgets/LoginFBtn.dart';
import 'package:flutter_login/Widgets/OrWidget.dart';
import 'package:flutter_login/Widgets/RemButton.dart';
import 'package:flutter_login/Widgets/TextField.dart';
import 'package:flutter_login/utils/Colorss.dart';
import 'package:flutter/cupertino.dart';

import 'ForgottenBody.dart';

class LoginBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroBodyState();
  }
}

class IntroBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colorss().color_top, Colorss().color_bottom])),
      child: Column(
        children: [
          AppBarr(
            title: "LOGIN",
            background_color: Colorss().color_top,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [Colorss().color_top, Colorss().color_bottom])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        //    margin: EdgeInsets.only(top: 190.0),
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colorss().color_textField,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold),
                        ),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(25.0, 10, 25, 8),
                        child: Row(
                          children: [
                            RememberMe(
                              first_color: Colorss().remember_color,
                              second_color: Colorss().remember_base,
                              accepted_color: Colorss().color_green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "REMEMBER ME ? ",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colorss().color_textField,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
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
                        btn_text: "Log In",
                        text_color: Colorss().text_color,
                        border_color: Colorss().color_border,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ForgottenPassword();
                            }));
                          },
                          child: Expanded(
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(1, 9, 9, 6),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgotten Password ? ",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colorss().text_color,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OrWidget(),
                      LoginFBtn(
                        btn_color: Colorss().color_blue,
                        btn_text: "Login with Facebook",
                        text_color: Colorss().text_color,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
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
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
