import 'package:flutter/material.dart';
import 'package:humteamaptech/Widgets/innerfield.dart';
import 'package:humteamaptech/constraints/const.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  double width = 0, height = 0;
  // List title = List.generate(5, (index) => 'abc');

  // var sub = List.generate(18, (index) => 'Laptop Lenovo G40');
  // List number = List.generate(5, (index) => 12403544505);
  // List price = List.generate(5, (index) => 'Rp 6.500,000,-');

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
        body: Container(
          margin: EdgeInsets.only(
              left: width * 0.07, right: width * 0.07, top: width * 0.03),
          height: height,
          child: ListView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          child: CircleAvatar(
                              maxRadius: width * 0.17,
                              backgroundColor: Colors.orange,
                              child: CircleAvatar(
                                maxRadius: width * 0.16,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1553514029-1318c9127859?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80'),
                              )),
                        )),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Joanna Smith Taylor'.toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: height * 0.015),
                          Text('User Name : tk968'),
                          SizedBox(height: height * 0.005),
                          Text('Employee Code : 968'),
                          SizedBox(height: height * 0.005),
                          Text('Senior Faculty'),
                          SizedBox(height: height * 0.005),
                          Text('Academics'),
                          SizedBox(height: height * 0.005),
                          Text('Date of Join : 2020-05-13'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.02,
                width: width,
                margin:
                    EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
                child: Text(
                  '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.02, bottom: height * 0.02),
                child: Flex(direction: Axis.vertical, children: [
                  Innerfield(
                      width: width,
                      height: height,
                      label: 'Phone:',
                      text: '+923545454645'),
                  Innerfield(
                      width: width,
                      height: height,
                      label: 'Email:',
                      text: 'Joanna@outlook.com'),
                  Innerfield(
                      width: width,
                      height: height,
                      label: 'Birthday:',
                      text: '2000-5-4'),
                  Innerfield(
                      width: width,
                      height: height,
                      label: 'Address:',
                      text: 'Phase II'),
                  Innerfield(
                      width: width,
                      height: height,
                      label: 'Gender:',
                      text: 'Female'),
                ]),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: panel('PERSONAL INFORMATIONS'),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Father Name',
                                    text: 'Smith Taylor'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'CNIC Number',
                                    text: '42564-56456955-2'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'CNIC Expiry Date',
                                    text: '2022-03-31'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Marital Status',
                                    text: 'Single'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Nationality',
                                    text: 'American'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Religion',
                                    text: 'Islam'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'BloodGroup',
                                    text: 'B-Positive'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Last Qualification',
                                    text: 'BSCS'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label:
                                        'BSCS Passport Number Driving License Number',
                                    text: '457567786'),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: panel('EMPLOYMENT INFORMATION'),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Company',
                                    text:
                                        'Columbia Information Technologies Pvt Ltd.'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Station ',
                                    text: 'Shahra-e-faisal Center'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Department',
                                    text: 'Academics'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Designation',
                                    text: 'Senior Faculty'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Role',
                                    text: 'Employee'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Employee Category',
                                    text: 'Teaching'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Employee Type',
                                    text: 'Permanent'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Grade',
                                    text: 'C13'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Years in Service',
                                    text: '2 years, 3 months and 30 days'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Confirmation Date',
                                    text: '2019-08-14'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Joining Date',
                                    text: '2019-05-13'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Probation Expiry Date',
                                    text: '2019-08-13'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Reference Channel',
                                    text: 'Rozee.pk '),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Last Organization Served',
                                    text: 'Arena Multimedia'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Designation At Time Of Joining',
                                    text: 'J.Faculty Member'),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'OFFICIAL CONTACT',
                                  // style: kCardTTDTextStyle
                                ),
                              ],
                            ),
                          ),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Official Email',
                                    text: 'Joanna@aptechkarachi.edu.pk'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Office Phone',
                                    text: ''),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Official MobileNo',
                                    text: ''),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'OCreditLimit',
                                    text: ''),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'EMERGENCY CONTACT',
                                  // style: kCardTTDTextStyle
                                ),
                              ],
                            ),
                          ),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Emergency Contact 1'),
                                SizedBox(height: height * 0.02),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Contact Person',
                                    text: 'unknown'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Relationship',
                                    text: 'unknown'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Contact Number',
                                    text: '5675768678'),
                                SizedBox(height: height * 0.02),
                                Text('Emergency Contact 2'),
                                SizedBox(height: height * 0.02),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Contact Person',
                                    text: 'unknown'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Relationship',
                                    text: 'unknown'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Contact Number',
                                    text: '5675768678'),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text('PERSONAL CONTACT ',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: false,
                                      style: TextStyle(fontSize: width * 0.04)),
                                ),
                              ],
                            ),
                          ),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Phone Number',
                                    text: '+923545454645'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Mobile Number 1',
                                    text: '+923545454645'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Mobile Number 2',
                                    text: '+923545454645'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Email:',
                                    text: 'Joanna@outlook.com'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Address',
                                    text: 'Phase II'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Country',
                                    text: 'America'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'City',
                                    text: 'Chicago'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Permenant Address',
                                    text: 'Phase II'),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          title: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'BANK INFORMATION',
                                  // style: kCardTTDTextStyle
                                ),
                              ],
                            ),
                          ),
                          expandedAlignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Bank Name',
                                    text: 'Swiss Bank'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Bank Branch',
                                    text: 'New York'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Bank Account Number',
                                    text: '05050584855'),
                                Innerfield(
                                    width: width,
                                    height: height,
                                    label: 'Bank Account Title',
                                    text: 'Joanna Smith Taylor'),
                                SizedBox(height: height * 0.02),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
            ],
          ),
        ));
  }

  Widget panel(String $panelName) {
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            $panelName,
          ),
        ],
      ),
    );
  }
}
