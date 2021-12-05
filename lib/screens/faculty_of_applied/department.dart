import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/department.dart';
import 'package:flutter_downloader_example/main.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';

import 'package:hexcolor/hexcolor.dart';

import 'department2part/appliedhome2.dart';
import 'dpartment1parts/appliedhome1.dart';

class Departmentapp extends StatefulWidget {
  const Departmentapp({Key? key}) : super(key: key);

  @override
  _DepartmentappState createState() => _DepartmentappState();
}

class _DepartmentappState extends State<Departmentapp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#FFF9C4"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UpperSection(size: size),
                Notificationpage(),
                SizedBox(
                  height: 30,
                ),
                //SelectYear(HexColor("#FFF59D"))
                Department(HexColor("#FFF59D"), Aplliedhome1(), Aplliedhome2(),
                    "Applied (AMA)", " Applied (ICT)")
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
            "Select Your Department",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Positioned(left: 50, bottom: 100, child: Backbuttons()),
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
    ]);
  }
}
