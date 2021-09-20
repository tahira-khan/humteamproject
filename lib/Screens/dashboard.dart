import 'package:fingerprint_auth_example/Screens/changepassword.dart';
import 'package:fingerprint_auth_example/Screens/check_in_button.dart';
import 'package:fingerprint_auth_example/Screens/leaves.dart';
import 'package:fingerprint_auth_example/Screens/main/main_screen.dart';
import 'package:fingerprint_auth_example/Screens/main/showleave.dart';
import 'package:fingerprint_auth_example/Screens/my_profile.dart';
import 'package:fingerprint_auth_example/Screens/myhome.dart';
import 'package:fingerprint_auth_example/Screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  var fullname, uemail, uimg;
  static SharedPreferences _sharedPreferences;

  getuser() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    setState(() {
      fullname = _sharedPreferences.getString('fullname');
      uemail = _sharedPreferences.getString('uemail');
      uimg = _sharedPreferences.getString('uimg');
    });
  }

  @override
  void initState() {
    getuser();
  }
  //dynamic x() => getuser();

  @override
  Widget build(BuildContext context) {
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
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Settings'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                        builder: (_) => MyHome(),
                      );
                      Navigator.push(context, route);
                    },
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
                accountName: Text('$fullname'),
                accountEmail: Text("$uemail"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://humteam.com////Uploads////Images////Employee////ef0f3427-3531-4b2c-81f1-39347734a686.jpg',
                        scale: 1.0)
                    // NetworkImage(
                    //     'https://humteam.com/ploads/Images/Employee/ef0f3427-3531-4b2c-81f1-39347734a686.jpg',
                    //     scale: 1.0)
                    )),
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
              title: Text("Add Leaves"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => Leaves(),
                );
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_rounded),
              title: Text("Total Leaves"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => Showleave(),
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
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("Change Password"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => ChangePassword(),
                );
                Navigator.push(context, route);
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("LogOut"),
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (_) => MyHome(),
                );
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
      body: MainScreen(),
    );
  }
}
