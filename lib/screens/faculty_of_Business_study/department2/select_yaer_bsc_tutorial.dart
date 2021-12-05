import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';
import 'package:flutter_downloader_example/components/status.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';

import 'package:hexcolor/hexcolor.dart';

class Selectyearbsctdp2 extends StatefulWidget {
  const Selectyearbsctdp2({Key? key}) : super(key: key);

  @override
  _Selectyearbsctdp2State createState() => _Selectyearbsctdp2State();
}

class _Selectyearbsctdp2State extends State<Selectyearbsctdp2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#FBE9E7"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UpperSecton(size: size),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Customelevated(
                          "Frist Year", HexColor("#FFCCBC"), Status()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Second year", HexColor("#FFCCBC"), Status()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Third Year", HexColor("#FFCCBC"), Status()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated(
                          "Fourth year", HexColor("#FFCCBC"), Status()),
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

class UpperSecton extends StatelessWidget {
  const UpperSecton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "images/topbsc.png",
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
            "Faculy of Business Studies",
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
            "Select Your year",
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
    ]);
  }
}
