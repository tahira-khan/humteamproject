import 'package:flutter/material.dart';
import 'package:humteamaptech/Screens/check_in_button.dart';
import 'package:humteamaptech/Screens/leaves.dart';
import 'package:humteamaptech/Screens/my_profile.dart';
import 'package:humteamaptech/Screens/notification.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  double width = 0, height = 0;
  List imgs = [
    'https://images.unsplash.com/photo-1444076784383-69ff7bae1b0a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1474983797926-3939622ca489?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1581337377333-904020186445?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [Colors.orange, Colors.red],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                  child: Column(
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Sittings'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Logout'),
                  ),
                ],
              ))
            ];
          }),
        ],
        title: Image(
          height: 50.0,
          width: 150.0,
          image: AssetImage('images/Logo_humteam_white.png'),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),

            UserAccountsDrawerHeader(
              accountName: Text("Aqib Nawaz"),
              accountEmail: Text("aqibnawaz015@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/aqib.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("My Profile"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => MyProfile(),
                );
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_rounded),
              title: Text("Leaves"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => Leaves(),
                );
                Navigator.push(context, route);
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("Notification"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => NotificationL(),
                );
                Navigator.push(context, route);
              },
            ),

            ListTile(
              leading: Icon(Icons.smart_button_rounded),
              title: Text("Check in button"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => Checkinbutton(),
                );
                Navigator.push(context, route);
              },
            ),

            // ListTile(
            //   leading: Icon(Icons.mode_edit), title: Text("My Posts"),
            //   onTap: () {
            //   },
            // ),
            //
            // ListTile(
            //   leading: Icon(Icons.mode_edit), title: Text("Forms"),
            //   onTap: () {
            //   },
            // ),
            //
            // ListTile(
            //   leading: Icon(Icons.mode_edit), title: Text("Form Approvels"),
            //   onTap: () {
            //   },
            // ),
            //
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("Change Password"),
              onTap: () {},
            ),

            Divider(
              color: Colors.orange,
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("LogOut"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        width: width,
        margin: EdgeInsets.only(
            left: width * 0.02, right: width * 0.02, top: width * 0.02),
        child: ListView.builder(
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Column(
                  children: [
                    Container(
                      // width: width,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.01, top: width * 0.03),
                            child: CircleAvatar(
                              radius: width * 0.06,
                              backgroundImage: NetworkImage('${imgs[index]}'),
                            ),
                          ),
                          SizedBox(width: width * 0.01),
                          Container(
                            margin: EdgeInsets.only(top: width * 0.02),
                            width: width * 0.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Simon Jenson (Manager Recruitment and Team Management - MD Office)',
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: width * 0.01),
                                    child: Text('${DateTime.now()}  ')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: width * 0.03),
                      child: Text(
                        'Title HAPPY DEFENCE DAY ',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    ClipRRect(
                      child: Image.network('${imgs[index]}'),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: width * 0.03,
                          left: width * 0.03,
                          right: width * 0.03,
                          bottom: width * 0.03),
                      child: Text(
                        'Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as coding) The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem. Proficient programming thus often requires expertise in several different subjects, including knowledge of the application domain, specialized algorithms, and formal logic. ',
                        style: TextStyle(
                          fontSize: width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
