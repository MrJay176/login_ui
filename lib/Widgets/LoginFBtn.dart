import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/utils/Colorss.dart';
import 'package:flutter_login/utils/Dimens.dart';

class LoginFBtn extends StatefulWidget {
  LoginFBtn({
    this.btn_color,
    @required this.btn_text,
    this.onPressed,
    @required this.text_color,
  });

  Color text_color;
  Color btn_color;
  String btn_text;
  Function onPressed;

  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<LoginFBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: widget.btn_color,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: FlatButton(
        onPressed: () {
          widget.onPressed;
        },
        child: Text(
          widget.btn_text,
          style: TextStyle(color: widget.text_color),
        ),
      ),
    );
  }
}
