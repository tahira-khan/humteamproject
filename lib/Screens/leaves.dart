import 'package:flutter/material.dart';
import 'package:humteamaptech/constraints/const.dart';


class Leaves extends StatefulWidget {

  @override
  _LeavesState createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
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
