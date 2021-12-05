import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/customtext.dart';
import 'package:flutter_downloader_example/controleer/auth_controler.dart';
import 'package:flutter_downloader_example/screens/home/login_screen/logion.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _email = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Uppersection(size: size),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Customtext(
                      controller: _email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    isloading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.green,
                                padding: EdgeInsets.all(20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () async {
                                if (inputvalidation()) {
                                  setState(() {
                                    isloading = true;
                                  });

                                  await Authcontroller().sendpasswordresetemail(
                                      context, _email.text);

                                  setState(() {
                                    isloading = false;
                                  });
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.SUCCES,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'sucessfull',
                                    desc: "check your email and reset",
                                    btnOkOnPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Loginpage(),
                                          ));
                                    },
                                  )..show();
                                } else {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.ERROR,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'Incorect information',
                                    desc: "plese enter correct Information",
                                    btnOkOnPress: () {},
                                  )..show();
                                }
                              },
                              child: Center(
                                child: Text(
                                  "Reset Password",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Stack(
            children: [
              Opacity(
                opacity: 0.7,
                child: Image.asset(
                  "images/yata.png",
                  width: size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: 80,
                left: 40,
                child: Text(
                  "faculty of Technology Studies",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: HexColor("#373737")),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 90,
                child: Text("TICT 3173 Group groject",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: HexColor("#373737"))),
              ),
              Positioned(
                bottom: 40,
                left: 110,
                child: Text("University Student",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: HexColor("#373737"))),
              )
            ],
          )),
    );
  }

  bool inputvalidation() {
    var isValid = false;
    if (_email.text.isEmpty) {
      isValid = false;
    } else if (!EmailValidator.validate(_email.text)) {
      isValid = false;
    } else {
      isValid = true;
    }

    return isValid;
  }
}

class Uppersection extends StatelessWidget {
  const Uppersection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/top1.png",
          width: size.width,
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          "images/top.png",
          width: size.width,
          fit: BoxFit.fitWidth,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "University of Vavuniya",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: HexColor("#373737")),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Forget Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: HexColor("#373737")),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text(
              "University Student",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: HexColor("#373737")),
            ),
          ),
        ),
      ],
    );
  }
}
