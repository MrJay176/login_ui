import 'package:flutter/material.dart';
import 'package:flutter_login/bodyState/ForgottenBody.dart';

class ForgottenPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          resizeToAvoidBottomPadding: false,
          body: SingleChildScrollView(child: ForgottenBody())),
    );
  }
}
