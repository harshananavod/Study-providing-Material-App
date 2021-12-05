import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/pastpapers/forthpastech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/pastpapers/fristpastthech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/pastpapers/secondpastech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/pastpapers/thirdpastech.dart';

import 'package:hexcolor/hexcolor.dart';


class Selectyeartech extends StatefulWidget {
  const Selectyeartech();

  @override
  _SelectyeartechState createState() => _SelectyeartechState();
}

class _SelectyeartechState extends State<Selectyeartech> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#D1C4E9"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Uppersection(size: size),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Customelevated(
                          "Frist Year", HexColor("#B39DDB"), MyApp()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Second year", HexColor("#B39DDB"), MyApp2()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Third Year", HexColor("#B39DDB"), MyApp3()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Fourth year", HexColor("#B39DDB"), MyApp4()),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
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
    return Stack(children: [
      Image.asset(
        "images/techyata.png",
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
            "Faculity of Technology Studies",
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
            "Select your Year",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Positioned(
        right: 50,
        bottom: 100,
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ));
          },
          icon: Icon(
            Icons.group,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),  Positioned(left: 50, bottom: 100, child: Backbuttons()),
    ]);
  }
}
