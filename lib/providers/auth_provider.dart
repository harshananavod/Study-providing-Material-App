import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_downloader_example/components/dialog_box.dart';
import 'package:flutter_downloader_example/controleer/auth_controler.dart';
import 'package:flutter_downloader_example/screens/home/login_screen/logion.dart';
import 'package:flutter_downloader_example/screens/home/register_page/register.dart';
import 'package:flutter_downloader_example/screens/notification/push_notification.dart';

class Auth extends ChangeNotifier {
  bool _isloading = false;
  bool _isobscure = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool _regisobscure = true;
  bool _regisloading = false;

  final _name = TextEditingController();
  final _indnum = TextEditingController();

//login
  bool get getisloading => _isloading;
  bool get getisobscure => _isobscure;
//reg
  bool get getregisloading => _regisloading;
  bool get getregisobscur => _regisobscure;
  //both
  TextEditingController get getemail => _email;
  TextEditingController get getpassword => _password;
  TextEditingController get getname => _name;
  TextEditingController get getidnum => _indnum;

//login
  void loginisobscure() {
    _isobscure = !_isobscure;
    notifyListeners();
  }

  //reg
  void regisobscure() {
    _regisobscure = !_regisobscure;
    notifyListeners();
  }

  Future<void> loginstart(BuildContext context) async {
    if (inputvalidation()) {
      _isloading = true;
      await Authcontroller().loginuser(context, _email.text, _password.text);
      _isloading = false;
    } else {
      Dialogbox().dialogbox(context, 'your provide information not correct',
          'Enter correct information', DialogType.ERROR, Loginpage());
    }
    notifyListeners();
  }

  bool inputvalidation() {
    var isValid = false;
    if (_email.text.isEmpty || _password.text.isEmpty) {
      isValid = false;
    } else if (!EmailValidator.validate(_email.text)) {
      isValid = false;
    } else {
      isValid = true;
    }

    return isValid;
  }

  Future<void> regstart(BuildContext context) async {
    if (inputvalidation()) {
      _regisloading = true;

      await Authcontroller().registeruser(context, _email.text, _password.text);

      _regisloading = false;
    } else {
      Dialogbox().dialogbox(context, 'your provide information not correct',
          'Enter correct information', DialogType.ERROR, Register());

      print("not sucess");
    }
  }

  bool reginputvalidation() {
    var isValid = false;
    if (_email.text.isEmpty ||
        _password.text.isEmpty ||
        _indnum.text.isEmpty ||
        _name.text.isEmpty) {
      isValid = false;
    } else if (!EmailValidator.validate(_email.text)) {
      isValid = false;
    } else {
      isValid = true;
    }

    return isValid;
  }

  PushNotification? _notificationinfo;

  dynamic get getnoti => _notificationinfo;
}
