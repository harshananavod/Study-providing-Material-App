import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_downloader_example/components/dialog_box.dart';
import 'package:flutter_downloader_example/screens/home/home.dart';
import 'package:flutter_downloader_example/screens/home/login_screen/logion.dart';
import 'package:flutter_downloader_example/screens/home/register_page/register.dart';

class Authcontroller {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> registeruser(
      BuildContext context, String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        Dialogbox().dialogbox(
            context,
            'Sucess',
            'Congratulations Now you can Login',
            DialogType.SUCCES,
            Loginpage());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Dialogbox().dialogbox(context, 'The password provided is too weak',
            'Enter Strong password', DialogType.ERROR, Register());

        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Dialogbox().dialogbox(
            context,
            'The account already exists for that email',
            'You are already Register',
            DialogType.ERROR,
            Register());

        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> loginuser(
      BuildContext context, String email, String password) async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Dialogbox().dialogbox(
          context, 'Congrats', 'Welocome to Uov', DialogType.SUCCES, Home());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Dialogbox().dialogbox(context, 'user-not-found',
            'No user found for that email', DialogType.ERROR, Loginpage());
      } else if (e.code == 'wrong-password') {
        Dialogbox().dialogbox(context, 'wrong-password',
            'please enter Correct Password.', DialogType.ERROR, Loginpage());
      }
    }
  }

  Future<void>? sendpasswordresetemail(
      BuildContext context, String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.ERROR,
          animType: AnimType.BOTTOMSLIDE,
          title: 'Invalid Email',
          desc: "please Enter vaild email",
          btnOkOnPress: () {},
        )..show();
      } else {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.ERROR,
          animType: AnimType.BOTTOMSLIDE,
          title: 'Error',
          desc: e.toString(),
          btnOkOnPress: () {},
        )..show();
      }
    } catch (e) {}
  }
}
