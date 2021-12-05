import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';
import 'package:flutter_downloader_example/main.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/select_year_tech%20tutorial.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/select_year_tech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/select_year_techasignment.dart';

import 'package:hexcolor/hexcolor.dart';

class Techhome extends StatefulWidget {
  const Techhome({Key? key}) : super(key: key);

  @override
  _TechhomeState createState() => _TechhomeState();
}

class _TechhomeState extends State<Techhome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#D1C4E9"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UpperSection(size: size),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Notificationpage(),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "past papers", HexColor("#B39DDB"), Selectyeartech()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Assignment", HexColor("#B39DDB"),
                          Selectyeartechassignment()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Tutorial", HexColor("#B39DDB"),
                          Selectyeartechtutorial()),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
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
                fontSize: 30,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
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
          padding: const EdgeInsets.only(top: 100),
          child: Text(
            " Study Metrial",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Positioned(
        right: 50,
        bottom: 110,
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
      ),
      Positioned(left: 50, bottom: 110, child: Backbuttons()),
    ]);
  }
}
