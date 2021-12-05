import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Frist Year',
        platform: platform,
      ),
    );
  }
}

const debug = true;

class MyHomePage extends StatefulWidget with WidgetsBindingObserver {
  final TargetPlatform? platform;

  MyHomePage({Key? key, this.title, this.platform}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _frist = [
    {
      //frist year frist semester
      'name': '2016 AUX 1111 Introduction to Entrepreneurship',
      'link':
          'https://drive.google.com/uc?export=download&id=157MVDUKhu6O_szW_FeYbemxW4363bu6e'
    },
    {
      'name':
          '2016 TICT 1113 Components of Information Communication Technology - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1SsdjCnrfdaCYd5gbPRBntU8IzpaIIzxy'
    },
    {
      'name':
          '2016 TICT 1113 Components of Information Communication Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1ISiWlD0H3HQY4ms1N0qf7cKYMfPodxay'
    },
    {
      'name': '2016 TICT 1123 Fundamentals of Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1JjE11EvRdkdncank_0vDVBxTSnPc-6J4'
    },
    {
      'name': '2016 TICT 1133 Computer Applications - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1v5jvnXTXQ1bjpKEzMQA7ln4RDRnNu3cX'
    },
    {
      'name': '2016 TICT 1133 Computer Applications',
      'link':
          'https://drive.google.com/uc?export=download&id=1qRLRPWgTrMAB0wJ1xqD7ka83TK7MFm76'
    },
    {
      'name': '2016 TICT 1144. Basic for Computer Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1tCyQujLKlvdRXOX3BHMMixalhvE5AL-X'
    },
    {
      'name': '2016 TICT 1144. Basic for Computer Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1lwhiwkkts4yh1kskCk0zFg_1Ia0LaTWr'
    },
    {
      'name': '2016 TICT 1152. Basic Management Principles',
      'link':
          'https://drive.google.com/uc?export=download&id=1Z61BiUJpaZwEOli7CeV2rEtIo4K7fkAF'
    },
    //2017
    {
      'name': '2017 AUX 1111 Introduction to Entrepreneurship',
      'link':
          'https://drive.google.com/uc?export=download&id=1Vt2Huvp8bvX8jhB9PDnCmqUaO67ypiYr'
    },
    {
      'name':
          '2017 TICT 1113 Components of Information Communication Technology - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1-mvPmGu0Yr4pYWBOV14kuyd3D9M5sv88'
    },
    {
      'name':
          '2017 TICT 1113 Components of Information Communication Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1IIYCsFdEWY2tVzC0eP0tAznDCwn10RN7'
    },
    {
      'name': '2017 TICT 1123. Fundamentals of Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1MvUj2-VWbObRTOFEs10wPOWsFxgqy9s_'
    },
    {
      'name': '2017 TICT 1133. Computer Applications - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1n1r3Z2hfbE3QMjeDAFNZ9iN0Uaa0AGM5'
    },
    {
      'name': '2017 TICT 1133 Computer Applications',
      'link':
          'https://drive.google.com/uc?export=download&id=16t1z3mgT0ehQvRUbfcm0aUNW6G4kRUFO'
    },
    {
      'name': '2017 TICT 1144. Basic for Computer Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1Gvwe_Gv6cBBwasxC3OLBOFdZVvAcWnh1'
    },
    {
      'name': '2017 TICT 1144. Basic for Computer Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1FNQMYEj0gj754UbefcDgqp8gGTPvS8Zu'
    },
    {
      'name': '2017 TICT 1152. Basic Management Principles',
      'link':
          'https://drive.google.com/uc?export=download&id=1nK8MH8Ym8GfYW0HbhiR1yDDPsDYJGV3p'
    },
    //2018
    {
      'name': '2018 ACU 1113. English Language I',
      'link':
          'https://drive.google.com/uc?export=download&id=1x6EcmHbCmGx8FceFkjr7kDnqclvsLlNx'
    },
    {
      'name': '2018 AUX 1111 Introduction to Entrepreneurship',
      'link':
          'https://drive.google.com/uc?export=download&id=1x88fADXcWo2MsBPiJJtTEPUF4bWhUwIP'
    },
    {
      'name':
          '2018 TICT 1113 Components of Information Communication Technology - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1V6k884HoBKmgrhNto8k5fq3dSogoCiPA'
    },
    {
      'name':
          '2018 TICT 1113 Components of Information Communication Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1V6k884HoBKmgrhNto8k5fq3dSogoCiPA'
    },
    {
      'name': '2018 TICT 1123. Fundamentals of Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1KOB0WnupKpCjM-t24jqBXKqKL3LqSgf9'
    },
    {
      'name': '2018 TICT 1133. Computer Applications - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1UbANxp1udMB_k3sqV6-rZXKOtYjOA5zv'
    },
    {
      'name': '2018 TICT 1133 Computer Applications',
      'link':
          'https://drive.google.com/uc?export=download&id=1UbANxp1udMB_k3sqV6-rZXKOtYjOA5zv'
    },
    {
      'name': '2018 TICT 1144. Basic for Computer Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=16Br8waPKsaR9PZ_DhVBl6ufrY2yfKGHc'
    },
    {
      'name': '2018 TICT 1144. Basic for Computer Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=192viF39Dt7HDoParopLJ2t3ok1rnYN7a'
    },
    {
      'name': '2018 TICT 1152. Basic Management Principles',
      'link':
          'https://drive.google.com/uc?export=download&id=1pbYZQoKYzs8L3tm_2JyeErXC4V1IaUu1'
    },
  ];

  final _second = [
    {
      //2016
      //frist year second semester

      'name': '2016 TICT 1213. Data Structures - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1nMnoEk9mOMGvGO0zlcPKPMQCFfgl2wWd'
    },
    {
      'name': '2016 TICT 1213. Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1a-cE-5I9om-Y-0FIatdUjhlOwSDG0R-7'
    },
    {
      'name': '2016 TICT 1222. Discrete Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1D8vhh2hUQIkP9RRVFvPcYzqV4g9g49XK'
    },
    {
      'name': '2016 TICT 1234. Object Oriented Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1vPJpRhAYuEfYVXx5XgLZbQc2gdX8XLpE'
    },
    {
      'name': '2016 TICT 1234. Object Oriented Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1-17t7NASMO0Pwmx6SkAON0bPz6idPR1t'
    },
    {
      'name': '2016 TICT 1242. Fundamentals of Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1r2tgpxQrYIpEFvSxi7y5hvFF_oZEU-cV'
    },
    {
      'name': '2016 TICT 1252. Information Technology Laws',
      'link':
          'https://drive.google.com/uc?export=download&id=1wYJIkMUqu1qsp_aj-gY8cnEdMIiXiL8Y'
    },
    {
      'name': '2016 TICT 1262. Computational Engineering Drawing - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1ej2r1VZvdh8LuGGiXtgRHwviBA8uC3Dt'
    },
    {
      'name': '2016 TICT 1262. Computational Engineering Drawing',
      'link':
          'https://drive.google.com/uc?export=download&id=1b0dsEImx3JCrA0OsuACyQJV9ZbFnVv35'
    },
    //2017
    {
      'name':
          '2017 AUX 1212. Sri Lankan Studies Social Harmony and Active Citizens',
      'link':
          'https://drive.google.com/uc?export=download&id=1fXmQRcwct3RHPhhBoni7jUnkTWEoCIz1'
    },
    {
      'name': '2017 TICT 1213. Data Structures - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1VOZdJcYYPrYWgkA00_dTXceNpL2mzWao'
    },
    {
      'name': '2017 TICT 1213. Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1JivME6gId9QVn6NBURh37efPs9Cn5LIN'
    },
    {
      'name': '2017 TICT 1222. Discrete Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1BaNJQRCATMP-bp0NL0IybYAcfh1ne2_6'
    },
    {
      'name': '2017 TICT 1234. Object Oriented Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1Da3lTx1Sw3oY02s5NXrq0Pm4PqPkMT0_'
    },
    {
      'name': '2017 TICT 1234. Object Oriented Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1Nv5lOmcndp03zpOSCyYR9w2BQMm9WMQb'
    },
    {
      'name': '2017 TICT 1252. Information Technology Laws',
      'link':
          'https://drive.google.com/uc?export=download&id=1rETV9bi659rpDOc7XPQvwgUKp2CNnM5n'
    },
    {
      'name': '2017 TICT 1262. Computational Engineering Drawing - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1eeyuR3-EJdG-RqpLQk3aTz6dMkVQItGb'
    },
    {
      'name': '2017 TICT 1262. Computational Engineering Drawing',
      'link':
          'https://drive.google.com/uc?export=download&id=1Ad9KZJ0VCo4gyLTqV_F3gr7GprujhGFk'
    },
    //2018
    {
      'name':
          '2018 AUX 1212. Sri Lankan Studies Social Harmony and Active Citizens',
      'link':
          'https://drive.google.com/uc?export=download&id=1uuR5GNJFeo9-83fbYp824uQxh3gHguMa'
    },
    {
      'name': '2018 TICT 1213. Data Structures - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1NetFsa2jfVVy-e0LpGqcAFMbslvauHpj'
    },
    {
      'name': '2018 TICT 1213. Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1sIcS9Q05kUpajz1BpOXToPZwvDN7mDV0'
    },
    {
      'name': '2018 TICT 1222. Discrete Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1RTVGKi9mpjfmwvhHRRLDhUGiUg_wnBmc'
    },
    {
      'name': '2018 TICT 1234. Object Oriented Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1vM2GDUNzlWfG20VtTEVspwHdpJKr7PTU'
    },
    {
      'name': '2018 TICT 1234. Object Oriented Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1IXxE5nahU_RumzmiyDZCYrEYEGvlMoPp'
    },
    {
      'name': '2018 TICT 1242. Fundamentals of Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1U6p6XhtOuypmIRe0PaouabjagVFLJGm0'
    },
    {
      'name': '2018 TICT 1252. Information Technology Laws',
      'link':
          'https://drive.google.com/uc?export=download&id=1OTEiBrG8aXZw-GOjBcsyFC7lNKL6B-6e'
    },
    {
      'name': '2018 TICT 1262. Computational Engineering Drawing - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZeofJK4cB7Kmo9uD2RetXtVlC_KkLd1U'
    },
    {
      'name': '2018 TICT 1262. Computational Engineering Drawing',
      'link':
          'https://drive.google.com/uc?export=download&id=1ric_tGMa1Wp0MfkkIEzOW5CVf9vb5mre'
    },

    //physics
  ];

  List<_TaskInfo>? _tasks;
  late List<_ItemHolder> _items;
  late bool _isLoading;
  late bool _permissionReady;
  late String _localPath;
  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();

    _bindBackgroundIsolate();

    FlutterDownloader.registerCallback(downloadCallback);

    _isLoading = true;
    _permissionReady = false;

    _prepare();
  }

  @override
  void dispose() {
    _unbindBackgroundIsolate();
    super.dispose();
  }

  void _bindBackgroundIsolate() {
    bool isSuccess = IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    if (!isSuccess) {
      _unbindBackgroundIsolate();
      _bindBackgroundIsolate();
      return;
    }
    _port.listen((dynamic data) {
      if (debug) {
        print('UI Isolate Callback: $data');
      }
      String? id = data[0];
      DownloadTaskStatus? status = data[1];
      int? progress = data[2];

      if (_tasks != null && _tasks!.isNotEmpty) {
        final task = _tasks!.firstWhere((task) => task.taskId == id);
        setState(() {
          task.status = status;
          task.progress = progress;
        });
      }
    });
  }

  void _unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    if (debug) {
      print(
          'Background Isolate Callback: task ($id) is in status ($status) and process ($progress)');
    }
    final SendPort send =
        IsolateNameServer.lookupPortByName('downloader_send_port')!;
    send.send([id, status, progress]);
  }

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      child: new Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: new Text(
            widget.title!,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.grey,
            ])),
          ),
        ),
        body: Column(
          children: [
            ///kkkakkakakkaakkkakak
            ///

            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/et.PNG"), fit: BoxFit.fill),
                ),
              ),
            ),

            Expanded(
                flex: 3,
                child: Builder(
                    builder: (context) => _isLoading
                        ? new Center(
                            child: new CircularProgressIndicator(),
                          )
                        : _permissionReady
                            ? _buildDownloadList()
                            : _buildNoPermissionWarning()))
          ],
        ),
      ),
    );
  }

  Widget _buildDownloadList() => Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: _items
              .map((item) => item.task == null
                  ? _buildListSection(item.name!)
                  : DownloadItem(
                      data: item,
                      onItemClick: (task) {
                        _openDownloadedFile(task).then((success) {
                          if (!success) {
                            // ignore: deprecated_member_use
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text('Cannot open this file')));
                          }
                        });
                      },
                      onActionClick: (task) {
                        if (task.status == DownloadTaskStatus.undefined) {
                          _requestDownload(task);
                        } else if (task.status == DownloadTaskStatus.complete) {
                          _delete(task);
                        } else if (task.status == DownloadTaskStatus.failed) {
                          _retryDownload(task);
                        }
                      },
                    ))
              .toList(),
        ),
      );

  Widget _buildListSection(String title) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18.0),
        ),
      );

  Widget _buildNoPermissionWarning() => Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Please grant accessing storage permission to continue -_-',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    _retryRequestPermission();
                  },
                  child: Text(
                    'Retry',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ))
            ],
          ),
        ),
      );

  Future<void> _retryRequestPermission() async {
    final hasGranted = await _checkPermission();

    if (hasGranted) {
      await _prepareSaveDir();
    }

    setState(() {
      _permissionReady = hasGranted;
    });
  }

  void _requestDownload(_TaskInfo task) async {
    task.taskId = await FlutterDownloader.enqueue(
        url: task.link!,
        headers: {"auth": "test_for_sql_encoding"},
        savedDir: _localPath,
        showNotification: true,
        openFileFromNotification: true);
  }

  // ignore: unused_element

  void _retryDownload(_TaskInfo task) async {
    String? newTaskId = await FlutterDownloader.retry(taskId: task.taskId!);
    task.taskId = newTaskId;
  }

  Future<bool> _openDownloadedFile(_TaskInfo? task) {
    if (task != null) {
      return FlutterDownloader.open(taskId: task.taskId!);
    } else {
      return Future.value(false);
    }
  }

  void _delete(_TaskInfo task) async {
    await FlutterDownloader.remove(
        taskId: task.taskId!, shouldDeleteContent: true);
    await _prepare();
    setState(() {});
  }

  Future<bool> _checkPermission() async {
    if (widget.platform == TargetPlatform.android) {
      final status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        final result = await Permission.storage.request();
        if (result == PermissionStatus.granted) {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  Future<Null> _prepare() async {
    // ignore: unused_local_variable
    final tasks = await FlutterDownloader.loadTasks();

    int count = 0;
    _tasks = [];
    _items = [];

    _tasks!.addAll(_frist.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Frist Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Frist Year Second Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _permissionReady = await _checkPermission();

    if (_permissionReady) {
      await _prepareSaveDir();
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _prepareSaveDir() async {
    _localPath =
        (await _findLocalPath())! + Platform.pathSeparator + 'Download';

    final savedDir = Directory(_localPath);
    bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
  }

  Future<String?> _findLocalPath() async {
    final directory = widget.platform == TargetPlatform.android
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return directory?.path;
  }
}

class DownloadItem extends StatelessWidget {
  final _ItemHolder? data;
  final Function(_TaskInfo?)? onItemClick;
  final Function(_TaskInfo)? onActionClick;

  DownloadItem({this.data, this.onItemClick, this.onActionClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
      child: InkWell(
        onTap: data!.task!.status == DownloadTaskStatus.complete
            ? () {
                onItemClick!(data!.task);
              }
            : null,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 64.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      data!.name!,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: _buildActionForTask(data!.task!),
                  ),
                ],
              ),
            ),
            data!.task!.status == DownloadTaskStatus.running ||
                    data!.task!.status == DownloadTaskStatus.paused
                ? Positioned(
                    left: 0.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: LinearProgressIndicator(
                      value: data!.task!.progress! / 100,
                    ),
                  )
                : Container()
          ].toList(),
        ),
      ),
    );
  }

  Widget? _buildActionForTask(_TaskInfo task) {
    if (task.status == DownloadTaskStatus.undefined) {
      return RawMaterialButton(
        onPressed: () {
          onActionClick!(task);
        },
        child: Icon(Icons.file_download),
        shape: CircleBorder(),
        constraints: BoxConstraints(minHeight: 32.0, minWidth: 32.0),
      );
    } else if (task.status == DownloadTaskStatus.running) {
      return RawMaterialButton(
        onPressed: () {
          onActionClick!(task);
        },
        child: Icon(
          Icons.pause,
          color: Colors.red,
        ),
        shape: CircleBorder(),
        constraints: BoxConstraints(minHeight: 32.0, minWidth: 32.0),
      );
    } else if (task.status == DownloadTaskStatus.paused) {
      return RawMaterialButton(
        onPressed: () {
          onActionClick!(task);
        },
        child: Icon(
          Icons.play_arrow,
          color: Colors.green,
        ),
        shape: CircleBorder(),
        constraints: BoxConstraints(minHeight: 32.0, minWidth: 32.0),
      );
    } else if (task.status == DownloadTaskStatus.complete) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'View',
            style: TextStyle(color: Colors.green),
          ),
          RawMaterialButton(
            onPressed: () {
              onActionClick!(task);
            },
            child: Icon(
              Icons.delete_forever,
              color: Colors.red,
            ),
            shape: CircleBorder(),
            constraints: BoxConstraints(minHeight: 32.0, minWidth: 32.0),
          )
        ],
      );
    } else if (task.status == DownloadTaskStatus.canceled) {
      return Text('Canceled', style: TextStyle(color: Colors.red));
    } else if (task.status == DownloadTaskStatus.failed) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Failed', style: TextStyle(color: Colors.red)),
          RawMaterialButton(
            onPressed: () {
              onActionClick!(task);
            },
            child: Icon(
              Icons.refresh,
              color: Colors.green,
            ),
            shape: CircleBorder(),
            constraints: BoxConstraints(minHeight: 32.0, minWidth: 32.0),
          )
        ],
      );
    } else if (task.status == DownloadTaskStatus.enqueued) {
      return Text('Pending', style: TextStyle(color: Colors.orange));
    } else {
      return null;
    }
  }
}

class _TaskInfo {
  final String? name;
  final String? link;

  String? taskId;
  int? progress = 0;
  DownloadTaskStatus? status = DownloadTaskStatus.undefined;

  _TaskInfo({this.name, this.link});
}

class _ItemHolder {
  final String? name;
  final _TaskInfo? task;

  _ItemHolder({this.name, this.task});
}
