
import 'package:flutter/material.dart';


const KAppbarimage =  Image(
  height: 50.0,
  width: 150.0,
  image: AssetImage('images/Logo_humteam_white.png' ),
);


const kBoxDecorationgradient =  BoxDecoration(
    gradient: LinearGradient(colors: [Colors.orange , Colors.red],
      begin: FractionalOffset(0.0,0.0),
      end: FractionalOffset(1.0,0.0),
      stops: [0.0 , 1.0],
      tileMode: TileMode.clamp,
    ),
);