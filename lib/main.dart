import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/forgotpass.dart';
import 'package:login/login.dart';
import 'package:login/sign%20up.dart';
import 'package:login/welcome.dart';

import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: welcome(),debugShowCheckedModeBanner: false,));
}