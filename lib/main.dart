import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:carcare/introscreen.dart';
import 'package:carcare/style.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr.Car',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              brightness: Brightness.light),
          primaryColor: Colors.orange),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'Password',
            style: kLabelStyle,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: txt2,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: ' Password ',
              hintStyle: kHinTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();

  void doLogin(context) async {
    String txtusername = txt1.text;
    String txtpassword = txt2.text;
    //get json text
    // ignore: non_constant_identifier_names
    String login_url = "http://172.20.10.10:1880/login";
    var parameter = {"username": txtusername, "password": txtpassword};
    var jsonText = json.encode(parameter);
    var result = await http.post(Uri.parse(login_url),
        headers: {"Content-Type": "application/json"}, body: jsonText);
    print(result);
    if (result.statusCode != 200) {
      print(result.statusCode);
      return;
    }
    var map1 = json.decode(result.body);
    if (map1['status'] == "yes") {
      goTo(context, App());
    }
  }

  void goTo(context, Widget w) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => w),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFBDBDBD),
                  Color(0xFF607D8b), // ออกมาไม่สวยเฉย
                  Color(0xFF4555a64),
                  Color(0xFF37474f),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Opensans', // อย่าลืม เอาgooglefont
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: (30.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Email',
                        style: kLabelStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 60.0,
                        child: TextField(
                          controller: txt1,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: ' Phone number,Username or Email ',
                              hintStyle: kHinTextStyle),
                        ),
                      ),
                    ],
                  ),
                  buildPassword(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.white),
                      icon: Icon(Icons.login_sharp),
                      label: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        doLogin(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
