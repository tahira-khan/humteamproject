import 'package:flutter/material.dart';
import 'package:humteamaptech/constraints/const.dart';



class Checkinbutton extends StatefulWidget {

  @override
  _CheckinbuttonState createState() => _CheckinbuttonState();
}

class _CheckinbuttonState extends State<Checkinbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        flexibleSpace: Container(
            decoration: kBoxDecorationgradient
        ),
        title: KAppbarimage,
        centerTitle: true,
      ),

    );
  }
}
