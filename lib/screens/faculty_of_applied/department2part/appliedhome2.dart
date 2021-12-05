import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';
import 'package:flutter_downloader_example/main.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/select_year_app_assignment_dp1.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/select_year_app_papers_dp1.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/select_year_app_tutorial_dp1.dart';

import 'package:hexcolor/hexcolor.dart';

class Aplliedhome2 extends StatefulWidget {
  const Aplliedhome2({Key? key}) : super(key: key);

  @override
  _Aplliedhome2State createState() => _Aplliedhome2State();
}

class _Aplliedhome2State extends State<Aplliedhome2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#FFF9C4"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
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
                  ),
                  Image.asset(
                    "images/applieduda.png",
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
                        "Faculty of Applied Science",
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
                        "Study Metrial",
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
                  ),
                  Positioned(left: 50, bottom: 100, child: Backbuttons()),
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Notificationpage(),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("past papers", HexColor("#FFF59D"),
                          Selectyearpapersdp2(HexColor("#FFF59D"))),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Assignment", HexColor("#FFF59D"),
                          Selectyearassignmentdp2(HexColor("#FFF59D"))),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Tutorial", HexColor("#FFF59D"),
                          Selectyeartutorialdp2(HexColor("#FFF59D"))),
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
