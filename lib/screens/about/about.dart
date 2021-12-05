import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#F5F5F5"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(children: [
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
                        "About Us",
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
                        "Devolop Team",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: HexColor("#373737")),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 100, top: 200, left: 250),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/sanujan.png"),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 360, right: 10, left: 290),
                    child: Positioned(
                      child: Text(
                        "Sanujan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: HexColor("#373737")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 200, right: 200, left: 20),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/h.png"),
                    )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 100, top: 360, right: 200, left: 50),
                      child: Positioned(
                        child: Text(
                          "Harshana",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: HexColor("#373737")),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 400, right: 10, left: 250),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/parami.png"),
                    )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 100, top: 560, right: 10, left: 290),
                      child: Positioned(
                        child: Text(
                          "Parami",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: HexColor("#373737")),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 400, right: 200, left: 20),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/ruka.png"),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 560, right: 200, left: 70),
                    child: Positioned(
                        child: Text(
                      "Hiran",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: HexColor("#373737")),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 600, right: 10, left: 250),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/nimantha.png"),
                    )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 100, top: 760, right: 10, left: 290),
                      child: Text(
                        "Nimantha",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: HexColor("#373737")),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 600, right: 200, left: 20),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/tharuni.png"),
                    )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 100, top: 760, right: 200, left: 60),
                      child: Text(
                        "Tharuni",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: HexColor("#373737")),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 800, right: 90, left: 140),
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 80,
                      backgroundImage: AssetImage("images/sulaxsan.png"),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 100, top: 960, right: 80, left: 180),
                    child: Text(
                      "Sulaxsan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: HexColor("#373737")),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
