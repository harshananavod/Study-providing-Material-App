import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/main.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';

import 'package:flutter_downloader_example/screens/faculty_of_Business_study/department.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department.dart';
import 'package:flutter_downloader_example/screens/faculty_of_technology/tech_home.dart';

import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  Uppersection(size: size),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Notificationpage(),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: HexColor("#B39DDB"),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Techhome(),
                                ));
                          },
                          child: Text(
                            "Faculy of Technology Studies",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: HexColor("#373737")),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: HexColor("#FFF59D"),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Departmentapp(),
                                ));
                          },
                          child: Text(
                            "Faculy of Appplied Science ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: HexColor("#373737")),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: HexColor("#FFCCBC"),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Departmentbsc(),
                                ));
                          },
                          child: Text(
                            "Faculy of Business Studies ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: HexColor("#373737")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Bottomsection(size: size)),
    );
  }
}

class Bottomsection extends StatelessWidget {
  const Bottomsection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          left: 60,
          child: Text(
            "faculty of Technology Studies",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: HexColor("#373737")),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 150,
          child: Text("TICT 3173 Group groject",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: HexColor("#373737"))),
        ),
        Positioned(
          bottom: 40,
          left: 180,
          child: Text("University Student",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: HexColor("#373737"))),
        ),
      ],
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
        "images/top1.png", //image
        width: size.width,
        fit: BoxFit.fitWidth,
      ),
      Image.asset(
        "images/top.png", //style
        width: size.width,
        fit: BoxFit.fitWidth,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            "University of Vavuniya",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "Select Your Faculty",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Text(
            "University Student",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Positioned(
        right: 50,
        bottom: 120,
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
    ]);
  }
}
