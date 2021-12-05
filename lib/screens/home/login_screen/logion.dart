import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_downloader_example/components/customtext.dart';
import 'package:flutter_downloader_example/providers/auth_provider.dart';
import 'package:flutter_downloader_example/screens/home/forget%20password/forget_password.dart';

import 'package:flutter_downloader_example/screens/home/register_page/register.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#C8E6C9"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UpperSection(size: size),
            
                Consumer<Auth>(
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: HexColor("#C8E6C9"),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/ic_launcher.png",
                                          height: 90,
                                          width: 90,
                                          fit: BoxFit.fill,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Welcome to University Of Vavuniya",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Consumer<Auth>(
                                        builder: (context, value, child) {
                                      return Text(
                                        "${value.getname.text}",
                                        style: TextStyle(fontSize: 20),
                                      );
                                    }),
                                    SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: HexColor("#373737")),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Customtext(
                                controller: value.getemail,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: HexColor("#373737")),
                              ),
                              SizedBox(
                                height: 6,
                              ),

                              ///checking
                              TextField(
                                obscureText: value.getisobscure,
                                controller: value.getpassword,
                                decoration: InputDecoration(
                                  filled: true,
                                  suffixIcon: IconButton(
                                    //obscure
                                    onPressed: () {
                                      value.loginisobscure();
                                    },
                                    icon: Icon(value.getisobscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              value.getisloading
                                  ? Center(child: CircularProgressIndicator())
                                  : Center(
                                      child: SizedBox(
                                        height: 60,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.greenAccent[100],
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 120,
                                                  vertical: 10),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          onPressed: () async {
                                            value.loginstart(context);
                                          },
                                          child: Text(
                                            "Sign in",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 30,
                                                color: HexColor("#373737")),
                                          ),
                                        ),
                                      ),
                                    ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: "Don’t have account?",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    TextSpan(
                                        text: "Register",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Register(),
                                                ));
                                          })
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: "Forget Password",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ForgetPassword(),
                                                ));
                                          })),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
            "Login",
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
            "Access account",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
    ]);
  }
}
