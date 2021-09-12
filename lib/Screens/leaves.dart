import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:humteamaptech/constraints/const.dart';
import 'package:image_picker/image_picker.dart';

class Leaves extends StatefulWidget {
  @override
  _LeavesState createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
  _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
        context: context,
        initialDate: selectedDate, // Refer step 1
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        fieldHintText: 'mm/dd/yyyy'))!;
    if (picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  double width = 0, height = 0;
  var image = ImagePicker();
  File _img = File('');
  DateTime selectedDate = DateTime.now();

  var imgname = '';
  List items = [
    'Casual Leaves',
    'Medical Leave (Unpaid unless approved)',
    'Annual Leaves',
    'Special Leave'
  ];
  var days = ['Full Day', 'Half Day'];
  var _chosenValue = 'Casual Leaves';
  String _day = 'Full Day';

  Future<void> imgUpload() async {
    PickedFile imagefile = (await image.getImage(source: ImageSource.gallery))!;
    setState(() {
      _img = File(imagefile.path);
      imgname = p.basename(_img.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: kBoxDecorationgradient),
        title: KAppbarimage,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
              Center(
                child: Text(
                  'Add Leave',
                  style: TextStyle(
                      fontSize: width * 0.06, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                width: width,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),

                  isExpanded: true,
                  elevation: 3,
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: (_chosenValue == null)
                      ? []
                      : items.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              '$value',
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                  hint: Text(
                    "Please Choose a Leave",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _chosenValue = value!;
                      print(value);
                    });
                  },
                ),
              ),
              SizedBox(height: height * 0.04),
              textfield('Reason'),
              SizedBox(height: height * 0.04),
              Container(
                width: width,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  isExpanded: true,
                  autofocus: true,
                  elevation: 3,

                  value: _day,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: (_day == null)
                      ? []
                      : days.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              '$value',
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                  hint: Text(
                    "Duration",
                    style: TextStyle(
                        //  color: Colors.black, fontWeight: FontWeight.bold
                        ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _day = value!;
                      print(value);
                    });
                  },
                ),
              ),
              SizedBox(height: height * 0.04),
              // Container(
              //   child: InputDecorator(
              //     decoration: InputDecoration(
              //       enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(color: Colors.orange, width: 2),
              //           borderRadius: BorderRadius.circular(10)),
              //       labelText: 'From',
              //     ),
              //     child:
              //   ),
              // ),
              datetime('From'),
              SizedBox(height: height * 0.04),
              datetime('To'),
              SizedBox(height: height * 0.04),
              choosepic('Attachment'),
              SizedBox(height: height * 0.04),
              textfield('Alternate Employee/Contact'),
              SizedBox(height: height * 0.04),
              textfield('Description'),
              SizedBox(height: height * 0.04),
              Container(
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Widget textfield(String label) {
    return Container(
        child: TextField(
      decoration: InputDecoration(
        labelText: '$label',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(10)),
      ),
    ));
  }

  Widget datetime(String hinttext) {
    return Container(
        width: width * 1,
        height: height * 0.1,
        child: InputDecorator(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(10)),
            labelText: '$hinttext',
          ),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${selectedDate.toLocal()}'.split(' ')[0],
                ),
                Icon(Icons.calendar_today)
              ],
            ),
            onTap: () {
              setState(() {
                _selectDate(context);
              });
            },
          ),
        ));
  }

  Widget choosepic(String hinttext) {
    return Container(
        width: width * 1,
        height: height * 0.1,
        child: InputDecorator(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(10)),
            labelText: '$hinttext',
          ),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_img.path != '' ? '$imgname' : 'No File Choosen'),
                Icon(Icons.file_upload)
              ],
            ),
            onTap: () {
              setState(() {
                imgUpload();
              });
            },
          ),
        ));
  }
}
