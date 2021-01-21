import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/bodyState/SignUpbody.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset:false,
          resizeToAvoidBottomPadding:false ,
          body: SingleChildScrollView(child: SignUpBody())),
    );
  }
}
