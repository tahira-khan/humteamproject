import 'package:fingerprint_auth_example/Screens/dashboard.dart';
import 'package:fingerprint_auth_example/Widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double width = 0, height = 0;
  TextEditingController id = TextEditingController();
  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  loginpage() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    var res = await http.get(Uri.parse(
        'https://guessitquiz.000webhostapp.com/userlogin.php?uname=' +
            id.text +
            '&pass=' +
            pass.text));

    var result = res.body;
    var data = json.decode(res.body);
    print(result);
    if (result != null) {
      String uname = data[0]['fullname'];
      _sharedPreferences.setString('fullname', uname);
      print(uname);
      Route route = MaterialPageRoute(
        builder: (_) => MyDashBoard(),
      );
      Navigator.push(context, route);
      // _shared.setString("uname", uname);
    } else if (result == "0") {
      print(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        title: Hero(
          tag: 'logo',
          child: Image(
            height: 50.0,
            width: 150.0,
            image: AssetImage('images/Logo_humteam_white.png'),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
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
                    image: AssetImage('images/aa.png')),
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
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        loginpage();
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
