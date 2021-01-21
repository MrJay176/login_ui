import 'package:flutter/material.dart';
import 'package:flutter_login/utils/Dimens.dart';

class TermsContainer extends StatefulWidget {
  TermsContainer({this.isslected, this.border_color});

  bool isslected;
  Color border_color;

  @override
  _TermsContainerState createState() => _TermsContainerState();
}

class _TermsContainerState extends State<TermsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.isslected ? Colors.green : Colors.transparent,
        border: Border.all(
          color: widget.border_color,
          width: Dimens().border_width,
        ),
      ),
    );
  }
}
