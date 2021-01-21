import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'Intro.dart';


class Logic {

  BuildContext context;

  Logic(BuildContext con){
    context = con;
  }

  Future<void> waitSec({int time}) async {
    Timer timer;
    var _duration = Duration(seconds: time);

    timer = Timer(_duration, ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=>Intro()));
    });
  }



}
