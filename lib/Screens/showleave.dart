import 'package:fingerprint_auth_example/constraints/const.dart';
import 'package:flutter/material.dart';

class Showleave extends StatefulWidget {
  @override
  _ShowleaveState createState() => _ShowleaveState();
}

class _ShowleaveState extends State<Showleave> {
  double width = 0, height = 0;

  final List<String> titleList = [
    "Casual Leave",
    "Special Leave",
    "Medical Leave",
    "Casual Leave",
    "Special Leave",
    "Medical Leave",
    "Casual Leave"
  ];

  final List<String> descList = [
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
    "Reason is the capacity of consciously applying logic to seek truth and draw conclusions from new or existing information",
  ];

  final List<String> timeList = [
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021"
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xFFD5DBDF),
        appBar: AppBar(
          flexibleSpace: Container(decoration: kBoxDecorationgradient),
          title: KAppbarimage,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: titleList.length,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.02, right: width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${titleList[index]}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.05)),
                            Text('Days: 1',
                                style: TextStyle(fontWeight: FontWeight.w500))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.02, right: width * 0.02),
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: Text('${descList[index]}',
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.02, right: width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container(
                            //   child: Flexible(
                            //     flex: 3,
                            //     fit: FlexFit.tight,
                            //     child: Text('From: 26 Jul 2021 '),
                            //   ),
                            // ),
                            Row(
                              children: [
                                Text(
                                  'From:',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text(' 26 Jul 2021')
                              ],
                            ),

                            Row(
                              children: [
                                Text('To :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                Text(' 26 Jul 2021 Mon')
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.02, right: width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Full Day',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Flex(
                              direction: Axis.horizontal,
                              children: [
                                Icon(
                                  Icons.brightness_1_rounded,
                                  color: Colors.green,
                                  size: width * 0.03,
                                ),
                                Text('Approved',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      )
                    ],
                  ),
                ),
              );
            }));
  }

  showDialogFunc(context, title, desc, time) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Icon(Icons.notifications_active)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // width: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        desc,
                        maxLines: 3,
                        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0)),
                    width: 100.0,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Check In'),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
