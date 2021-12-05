import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/screens/home/home.dart';
import 'package:flutter_downloader_example/screens/home/login_screen/logion.dart';

class Userprovider extends ChangeNotifier {
// login user checking or sign in or not
  void initilizeUser(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
      
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Loginpage(),
            ));
      } else {
       
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      }
    });
  }
}
