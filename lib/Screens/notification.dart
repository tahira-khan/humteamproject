import 'package:flutter/material.dart';
import 'package:humteamaptech/constraints/const.dart';

class NotificationL extends StatefulWidget {

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationL> {
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


