
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/utils/Colorss.dart';

import 'logic.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
       body:SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<SplashBody>{
  Logic logic;

  checkTimer()async{
     logic.waitSec(time:3);
  }

  @override
  Widget build(BuildContext context) {
    logic = Logic(context);
    checkTimer();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colorss().color_top, Colorss().color_bottom])),
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child:Center(
        child:FittedBox(
          child: Text(
            'Welcome',
            style:TextStyle(
                fontSize: 40.0,
                color: Colorss().color_textField,
                fontFamily: "Italianno",
                fontWeight: FontWeight.bold),
          ),
        )
      ) ,
    );
  }

}


