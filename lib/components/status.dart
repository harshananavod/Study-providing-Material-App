import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  void _launchURL() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'universityvavuniya@gmail.com',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow,
              ),
              height: 450,
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Image.asset(
                                    "images/sad.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Sorry We hope to provide this facility in Fucture if you can help to us please send Messgage to the Folowing address from the Required Sources ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 230,
          left: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: 70,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _launchURL();
                    });
                  },
                  child: Text("Send Massage ",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                          color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  )),
            ),
          ),
        ),
        Positioned(
          left: 340,
          top: 280,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close_rounded,
                size: 50,
              )),
        )
      ]),
    );
  }
}
