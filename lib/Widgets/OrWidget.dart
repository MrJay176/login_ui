import 'package:flutter/material.dart';
import 'package:flutter_login/utils/Colorss.dart';

class OrWidget extends StatefulWidget {
  @override
  _OrWidgetState createState() => _OrWidgetState();
}

class _OrWidgetState extends State<OrWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 1.4,
              color: Colorss().text_color,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colorss().text_color,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 1.4,
              color: Colorss().text_color,
            ),
          )
        ],
      ),
    );
  }
}
