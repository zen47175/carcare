import 'dart:ui';

import 'package:flutter/material.dart';

get kLabelStyle => TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.normal,
      letterSpacing: .5,
      fontWeight: FontWeight.bold,
    );
get kBoxDecorationStyle => BoxDecoration(
      color: Colors.deepOrange[100],
      border: Border.all(
        color: Colors.black26,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(20),
    );

get kHinTextStyle => TextStyle(fontSize: 15.0, color: Colors.redAccent);
