import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/utils/Colorss.dart';
import 'package:flutter_login/utils/Dimens.dart';

class Button extends StatefulWidget {
  Button({
    @required this.btn_color,
    @required this.btn_text,
    this.onPressed,
    @required this.text_color,
    @required this.border_color,
  });

  Color text_color;
  Color border_color;
  List<Color> btn_color;
  String btn_text;
  Function onPressed;

  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: widget.border_color,
            width: Dimens().border_width,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: widget.btn_color)),
      child: Center(
        child: Text(
          widget.btn_text,
          style: TextStyle(color: widget.text_color),
        ),
      ),
    );
  }
}
