import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mohd_sami_tk2/firebase_options.dart';
import 'package:mohd_sami_tk2/home.dart';
import 'package:mohd_sami_tk2/login.dart';
import 'package:mohd_sami_tk2/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => MyHome(),
    },
  ));
}
