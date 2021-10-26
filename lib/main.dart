// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:carcare/signinGoogle/Authentication.dart';
import 'package:carcare/signinGoogle/User_T.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:http/http.dart' as http;
import 'package:carcare/introscreen.dart';
import 'package:carcare/style.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets',
      fallbackLocale: Locale('en', 'US'),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('th', 'TH'),
      ],
      child: ChangeNotifierProvider(
        create: (context) => StoreLanguage(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  Future<void> signInWithGoogle() async {
    await Authentification().signInWithGoogle();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(
          value: FirebaseAuth.instance.authStateChanges(),
          initialData: null,
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        //title: 'Mr.Car1',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
                color: Colors.transparent,
                elevation: 0,
                brightness: Brightness.light),
            primaryColor: Colors.orange),
        home: UserTest(),
      ),

//example
      //         theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.blue,
      //   ).copyWith(
      //     secondary: Colors.green,
      //   ),
      //   textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      // ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('ThemeData Demo'),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      //   body: const Center(
      //     child: Text('Button pressed 0 times'),
      //   ),
      // ),
    );
  }
}

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> signInWithGoogle() async {
    await Authentification().signInWithGoogle();
  }

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
    //192.168.1.4 // zen
    //172.20.10.2 //Jn iphone
    //192.168.1.2 //Jn wifi

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
                  Color(0xFF607D8b), //login color
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
                        'Username or Email',
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
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: ' Username or Email ',
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
                  ),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: signInWithGoogle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// showLogInFail() {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Logout'),
//             content: Text('Log in Fail \n please Try Again'),
//             actions: <Widget>[
//               ElevatedButton(
//                 child: Text(
//                   'Cancel',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
              
//             ],
//           );
//         });
//   }
