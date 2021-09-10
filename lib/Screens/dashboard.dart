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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [Colors.orange , Colors.red],
              begin: FractionalOffset(0.0,0.0),
              end: FractionalOffset(1.0,0.0),
              stops: [0.0 , 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),

        actions: <Widget>[
          PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Column(
                    children: <Widget>[

                      RaisedButton(onPressed: (){},
                        child: Text('Sittings'),
                      ),
                      RaisedButton(onPressed: (){},
                        child: Text('Logout'),
                      ),


                    ],
                  ))];}),

        ],


        title: Image(
          height: 50.0,
          width: 150.0,
          image: AssetImage('images/Logo_humteam_white.png' ),
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
                gradient: new LinearGradient(colors: [Colors.orange , Colors.red],
                  begin: FractionalOffset(0.0,0.0),
                  end: FractionalOffset(1.0,0.0),
                  stops: [0.0 , 1.0],
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
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline), title: Text("My Profile"),
              onTap: () {

                Route route = MaterialPageRoute(builder: (_) => MyProfile(),);
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_rounded), title: Text("Leaves"),
              onTap: () {

                Route route = MaterialPageRoute(builder: (_) => Leaves(),);
                Navigator.push(context, route);
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications_active), title: Text("Notification"),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => NotificationL(),);
                Navigator.push(context, route);
              },
            ),

            ListTile(
              leading: Icon(Icons.smart_button_rounded), title: Text("Check in button"),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Checkinbutton(),);
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
              leading: Icon(Icons.lock_outline), title: Text("Change Password"),
              onTap: () {
              },
            ),

            Divider(
              color: Colors.orange,
            ),

            ListTile(
              leading: Icon(Icons.logout), title: Text("LogOut"),
              onTap: () {
              },
            ),

          ],
        ),
      ),

      body: Container(),




    );
  }
}


