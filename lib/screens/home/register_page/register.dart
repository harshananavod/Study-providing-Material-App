import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/customtext.dart';
import 'package:flutter_downloader_example/providers/auth_provider.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#B2EBF2"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(child: Consumer<Auth>(
            builder: (context, value, child) {
              return Column(
                children: [
                  UpperSection(size: size),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#373737")),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Customtext(controller: value.getname),
                        SizedBox(
                          height: 6,
                        ),
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
                          "Index Number",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#373737")),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Customtext(
                          controller: value.getidnum,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: HexColor("#373737"),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextField(
                          obscureText: value.getregisobscur,
                          controller: value.getpassword,
                          decoration: InputDecoration(
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                value.regisobscure();
                              },
                              icon: Icon(value.getregisobscur
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
                        value.getregisloading
                            ? Center(child: CircularProgressIndicator())
                            : Center(
                                child: SizedBox(
                                  height: 60,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: HexColor("#64FFDA"),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 120, vertical: 20),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),

                                    //register button checking part
                                    onPressed: () async {
                                      value.regstart(context);
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: HexColor("#373737")),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  )
                ],
              );
            },
          )),
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
              "Register",
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
