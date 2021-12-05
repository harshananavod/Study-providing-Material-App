import 'package:flutter/material.dart';

import 'package:flutter_downloader_example/screens/about/about.dart';



import 'package:hexcolor/hexcolor.dart';


class Acadamicbs extends StatefulWidget {
  final t;
  const Acadamicbs(this.t);

  @override
  _AcadamicbsState createState() => _AcadamicbsState(this.t);
}

class _AcadamicbsState extends State<Acadamicbs> {
  final t;
  _AcadamicbsState(this.t);

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
                Stack(children: [
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
                        t,
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
                    )
                ]
                
                
                
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
