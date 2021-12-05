import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/providers/use_provider.dart';
import 'package:flutter_downloader_example/screens/home/login_screen/logion.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7), () {
      Provider.of<Userprovider>(context, listen: false).initilizeUser(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Loginpage(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: HexColor("#B9F6CA"),
          ),
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(
                height: size.height / 4,
              ),
              Image.asset("images/uov.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "University of Vavuniya",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: HexColor("#373737")),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "images/ic_launcher.png",
                height: size.width / 1.7,
              ), //SizedBox(
              // height: size.width / 1.7,
              //),
              SizedBox(
                height: 20,
              ),
              Text(
                "Devoloped by",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Faculty of Technology Studies",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "TICT-3173 Group project",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Group -14",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
