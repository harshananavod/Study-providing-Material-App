import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_downloader_example/providers/auth_provider.dart';
import 'package:flutter_downloader_example/providers/use_provider.dart';
import 'package:flutter_downloader_example/screens/notification/push_notification.dart';

import 'package:flutter_downloader_example/screens/splash_screen/SplashScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

import 'package:responsive_framework/responsive_wrapper.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        //poriyaa
        builder: (context, widget) => ResponsiveWrapper.builder(widget,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
            background: Container(color: Color(0xFFF5F5F5))),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

class Notificationpage extends StatefulWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  _NotificationpageState createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  late final FirebaseMessaging _messaging;
  // ignore: unused_field
  late int _totalnotificationCounter;
  PushNotification? _notificationinfo;
  void registernotification() async {
    await Firebase.initializeApp();
    _messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("user grated the permission");
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        PushNotification notification = PushNotification(
          title: message.notification!.title,
          body: message.notification!.body,
          datatitle: message.data['title'],
          databody: message.data['body'],
        );
        setState(() {
          _totalnotificationCounter++;
          _notificationinfo = notification;
        });
        // ignore: unnecessary_null_comparison
        if (notification != null) {
          showSimpleNotification(
              Text(_notificationinfo!.title!,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black)),
              subtitle: Text(
                _notificationinfo!.body!,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
              background: Colors.cyan.shade700,
              leading: Image.asset(
                "images/ic_launcher.png",
                height: 60,
                width: 60,
                fit: BoxFit.fill,
              ),
              duration: Duration(seconds: 10));
        }
      });
    }
  }

  @override
  void initState() {
    registernotification();
    _totalnotificationCounter = 0;
    // ignore: todo
    //TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor("BDBDBD"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Notification Board",
                style: TextStyle(
                  color: HexColor("37474F"),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12,
              ),
              // ignore: unnecessary_null_comparison
              _notificationinfo != null
                  ? Container(
                      color: HexColor("BDBDBD"),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                                "Title : ${_notificationinfo!.datatitle ?? _notificationinfo!.title}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: HexColor("37474F")),
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(
                            height: 19,
                            //9
                          ),
                          Center(
                            child: Text(
                              "${_notificationinfo!.databody ?? _notificationinfo!.body}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome To University of Vavuniya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: HexColor("37474F")),
                              textAlign: TextAlign.center),
                          SizedBox(
                            height: 12,
                            //12
                          ),
                          Text("Waiting Notifiacation Ready",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.red),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

const debug = true;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await FlutterDownloader.initialize(debug: debug);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Auth()),
        ChangeNotifierProvider(create: (context) => Userprovider()),
      ],
      child: Main(),
    ),
  );
}
