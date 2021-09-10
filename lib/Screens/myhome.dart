import 'package:flutter/material.dart';
import 'package:humteamaptech/Widgets/customTextField.dart';
import 'package:humteamaptech/Screens/dashboard.dart';


class MyHome extends StatefulWidget {

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {


  TextEditingController id = TextEditingController();
  TextEditingController pass = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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


        title: Hero(
          tag: 'logo',
          child: Image(
            height: 50.0,
            width: 150.0,
            image: AssetImage('images/Logo_humteam_white.png' ),
          ),
        ),
        centerTitle: true,
      ),

      body: Container(


        decoration: BoxDecoration(
          color: Color(0xFFD5DBDF),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                  height: 150.0,
                  width: 300.0,

                  image: AssetImage('images/aa.png')
              ),
              SizedBox(
                height: 10.0,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    CustomTextField(
                      controller: id,
                      data: Icons.person,
                      isObsecure: false,
                      hintText: 'Enter Username',
                    ),
                    CustomTextField(
                      controller: pass,
                      data: Icons.lock,
                      isObsecure: true,
                      hintText: 'Enter Password',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              Container(
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: MaterialButton(onPressed: (){

                  Route route = MaterialPageRoute(builder: (_) => MyDashBoard(),);
                  Navigator.push(context, route);
                },
                  child: Text('login' , style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0
                  ),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
