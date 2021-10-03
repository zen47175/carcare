import 'package:carcare/introscreen.dart';
import 'package:carcare/main.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';

class UserTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    print(user.displayName);
    if (user.email != "") {
      return OnBoardingPage();
    } else {
      return LoginPage();
    }
  }
}
