import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp1dp2pbsc extends StatelessWidget {
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
  final _documents = [
    {
      //onna ohoma gahgena palayan subject code ekak year ekai
      //automobile
      'name': '2015 maths',
      'link':
          'https://drive.google.com/uc?export=download&id=1RQZd-M_4TUXQppvDpT00iE-vf_jqcEJB'
    },
    {
      'name': '2015 ACC 1113. Financial Accounting Part - I',
      'link':
          'https://drive.google.com/uc?export=download&id=1jE13i5Z6O2dr6uwI0o6KxvhPhOqLxhON'
    },
    {
      'name': '2016 ACC 1113. Financial Accounting Part - I',
      'link':
          'https://drive.google.com/uc?export=download&id=1jE13i5Z6O2dr6uwI0o6KxvhPhOqLxhON'
    },
    {
      'name': '2017 ACC 1113. Financial Accounting Part - I',
      'link':
          'https://drive.google.com/uc?export=download&id=1c_OeyeSk0JMvmWBYWOBMK7wRHUD5OsKP'
    },
    {
      'name': '2018 ACC 1113. Financial Accounting Part - I',
      'link':
          'https://drive.google.com/uc?export=download&id=1J7NCx3z5p_RbQJLQ6yMwQPxMTtragCY1'
    },
    {
      'name': '2016 ACC 1113. Financial Accounting Part - II',
      'link':
          'https://drive.google.com/uc?export=download&id=1oI0KcNE-fu4LEN7ji4734ONxmVP19DKA'
    },
    {
      'name': '2016 ACC 1113. Financial Accounting Part - II',
      'link':
          'https://drive.google.com/uc?export=download&id=1oI0KcNE-fu4LEN7ji4734ONxmVP19DKA'
    },
    {
      'name': '2017 ACC 1113. Financial Accounting Part - II',
      'link':
          'https://drive.google.com/uc?export=download&id=1CeW-R-bGftm3rqLSBpF1p-vFeSGBnw-n'
    },
    {
      'name': '2018 ACC 1113. Financial Accounting Part - II',
      'link':
          'https://drive.google.com/uc?export=download&id=1t1uNQGWLhooSwJqag_QKw-HyuLOmtcRt'
    },
    {
      'name': '2015 ACU1120 GÇô General English',
      'link':
          'https://drive.google.com/uc?export=download&id=1qU9rqDPmEJh4T9PzAHPAgOMNziZPwr5I'
    },
    {
      'name': '2016 ACU1120 GÇô General English',
      'link':
          'https://drive.google.com/uc?export=download&id=1OmyUOg6SKSNVqoTRy8ybpQ_a87Y8Nxc8'
    },
    {
      'name': '2017 ACU1120 GÇô General English',
      'link':
          'https://drive.google.com/uc?export=download&id=1grNmssQuUtWXnxxaILHXyTWTFLae9sln'
    },
    {
      'name': '2015 ECO 1113. Principles of Microeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1mGIKkt9WmvEFf_EemcpCc5oc9C1hbRyo'
    },
    {
      'name': '2016 ECO 1113. Principles of Microeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1gymOXWd_CqJqLVtwtGCgOH33YbH77ywS'
    },
    {
      'name': '2017 ECO 1113. Principles of Microeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1IznJOv1le_2xUGAUmHVjvMt1hjoLEDHP'
    },
    {
      'name': '2015 ENG 1110. Proficiency in English I',
      'link':
          'https://drive.google.com/uc?export=download&id=1TIrD6SFEwKeXT2eFDtcC6XrWgR57tUzV'
    },
    {
      'name': '2016 ENG 1110. Proficiency in English I',
      'link':
          'https://drive.google.com/uc?export=download&id=1xEnuQ6QrFF5frh4Luea934B6aL4tm2sb'
    },
    {
      'name': '2015 MGT1123 - Introduction to Business Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=15tsgiartHgsaLarbW7lfvMPjXZYpRlE2'
    },
    {
      'name': '2016 MGT1123 - Introduction to Business Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=12fplkMeugWXVnGhg5CpAVawRBdJnmjYJ'
    },
    {
      'name': '2017 MGT1123 - Introduction to Business Mathematics',
      'link':
          'https://drive.google.com/uc?export=download&id=1kHaAT5Ld32LkZjg1t5flXG7_E8S5fSw-'
    },
    {
      'name': '2017 MGT1123 - Introduction to Business Mathematics new',
      'link':
          'https://drive.google.com/uc?export=download&id=120h4Ozbezw20ukIZPnXbJ-UwIhy7lIg-'
    },
    {
      'name': '2018 MGT1123 - Introduction to Business Mathematics old',
      'link':
          'https://drive.google.com/uc?export=download&id=1iHEBoiAHVwWTMG77UPzNdGGi-emF7gen'
    },
    {
      'name': '2018 MGT1123 - Introduction to Business Mathematics new',
      'link':
          'https://drive.google.com/uc?export=download&id=16TvtXX2iQjk0-iY5sqWa7vft4uYbeMuV'
    },
    {
      'name':
          '2015 MGT1133 GÇô Fundamentals of Information Technology (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1SLlsMijDEaUksPYecBBjWpLUBB6pIf-5'
    },
    {
      'name': '2015 MGT1133 GÇô Fundamentals of Information Technology (Thery)',
      'link':
          'https://drive.google.com/uc?export=download&id=1x823y_40F-SQPo8SnAj31GJOMIha3eYN'
    },
    {
      'name':
          '2016 MGT1133 GÇô Fundamentals of Information Technology (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1CfBtaA8W0EdplCPFSp5VWSOLF4qpGh7o'
    },
    {
      'name': '2016 MGT1133 GÇô Fundamentals of Information Technology (Thery)',
      'link':
          'https://drive.google.com/uc?export=download&id=1DxzJrHfTfbvW0x8Ows6lXvCSen90X4F_'
    },
    {
      'name':
          '2017 MGT1133 GÇô Fundamentals of Information Technology (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1o_qyO1g2_ema_VR7u9DXT5HQXsWQHQSD'
    },
    {
      'name': '2017 MGT1133 GÇô Fundamentals of Information Technology (Thery)',
      'link':
          'https://drive.google.com/uc?export=download&id=1abYU5h5op0pTYxLhyA4UvT0dEmCpEkeU'
    },
    {
      'name':
          '2018 MGT1133 GÇô Fundamentals of Information Technology old (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1UHFR5EbNILl7fKquhcq3ZLWdsYw6FeYZ'
    },
    {
      'name':
          '2018 MGT1133 GÇô Fundamentals of Information Technology old(Thery)',
      'link':
          'https://drive.google.com/uc?export=download&id=1ygTXSYfjXgKcrd1zOqssY3Z2vMZWzllp'
    },
    {
      'name':
          '2018 MGT1133 GÇô Fundamentals of Information Technology (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1JAd9mU6_KUAkp9DMEjJ9awYxKnJpjV3G'
    },
    {
      'name': '2018 MGT1133 GÇô Fundamentals of Information Technology (Thery)',
      'link':
          'https://drive.google.com/uc?export=download&id=1GhlI8NgaIq4IufYbukxXnuP5rhOyQy_S'
    },
  ];

  final _images = [
    //1.2 bs sem
    {
      'name': '2016 ACC 1213. Financial Accounting II - Part II',
      'link':
          'https://drive.google.com/uc?export=download&id=1yHq52lbaOVLQMI8DC0tFjGUIAQ_QZ_QX'
    },
    {
      'name': '2016 ACC 1213. Financial Accounting II',
      'link':
          'https://drive.google.com/uc?export=download&id=1w_bvWpG1rLGHfcAYqN0TjFo1ZbhT7K09'
    },
    {
      'name': '2016 ACU 1210. Career Guidence',
      'link':
          'https://drive.google.com/uc?export=download&id=18DPLcUIvM9mF1xoent5kwIwzArClXHCz'
    },
    {
      'name': '2016 ENG 1210. English Proficiency in English II',
      'link':
          'https://drive.google.com/uc?export=download&id=1XCosh9mMd9azaPu6VTduhgNg4ttNFwnE'
    },
    {
      'name': '2016 MGT 1213. Business Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1UAG8N8lLVQ3zSs_wkS_9DkakLmCGBJmZ'
    },
    {
      'name': '2016 MGT 1223. Principles of Human Resource Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1p1YBG289ZqoZ1SJfVNYWEGH8edP7wVeZ'
    },
    {
      'name': '2017 ACC 1213. Financial Accounting II - Old',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZpvjS-My1fFSVus8NgMHPM5WIBOd1z_8'
    },
    {
      'name': '2017 ACC 1213. Financial Accounting II  new',
      'link':
          'https://drive.google.com/uc?export=download&id=1w5rc9xJiMXk5kZ3BMVYT6oBOvl0Wwnyt'
    },
    {
      'name': '2017 ACU 1210. Career Guidence',
      'link':
          'https://drive.google.com/uc?export=download&id=1YXy4q434vDrVoDRd5OffhdgT_4CDc7D1'
    },
    {
      'name': '2017 ACU 1212 - Career Guidance and Soft Skills Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1AZPE237i9So-UvsOYyK6k5DSXxAv42OK'
    },
    {
      'name': '2017 ECO 1213 - Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1-eQZm0MuGnBc7ykk4tmtI8xwanmE3hV6'
    },
    {
      'name': '2017 ENG 1210 GÇô Proficiency in English II ',
      'link':
          'https://drive.google.com/uc?export=download&id=1vhd_myLT9axAHyS9ksU22qFtvIQEB6PO'
    },
    {
      'name': '2017 HRM 1213 GÇô Human Resource Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1WKukT9dz34bP47U96nsyu8QQa642ntbx'
    },
    {
      'name': '2017 MAR 1213 - Marketing Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1itzetffbroKuPl6qrFfr5ym9t9NQe4Mw'
    },
    {
      'name': '2017 MAR 1213 - Principles of Marketing - Old Syllabus ',
      'link':
          'https://drive.google.com/uc?export=download&id=1IQSTxxUkysSS94fhTSR1IQeAivQ6mJnQ'
    },
    {
      'name': '2017 MGT 1213 - Business Statistics - Old ',
      'link':
          'https://drive.google.com/uc?export=download&id=1lS4HwVjbe7K7vJW_bMHZHiGDQwoo8HZm'
    },
    {
      'name': '2017 MGT 1213 - Business Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1mi6uojl33x5kPnDDj02ZbjL6k_D0nzYz'
    },
    {
      'name': '2017 MGT 1223 - Principles of Human Resource Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1yUE-JZD2gg6QpCwo0Ae-dtSIi79sUokh'
    },
    {
      'name': '2018 ACC 1213. Financial Accounting II - Old',
      'link':
          'https://drive.google.com/uc?export=download&id=1duCzR7pGyM8v_KNdWr_UUnESh7nVvMFP'
    },
    {
      'name': '2018 ACC 1213. Financial Accounting II  new',
      'link':
          'https://drive.google.com/uc?export=download&id=12By0GWb1SPaK7yeVfNgNjuL0dYfm4v5G'
    },
    {
      'name': '2018 ACU 1212 - Career Guidance and Soft Skills Development',
      'link':
          'https://drive.google.com/uc?export=download&id=132pR7QTeDBLVc0Z-0uLx3XMBpM-SADo-'
    },
    {
      'name': '2018 ECO 1213 - Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1p3GyhDL7vCZI1WldID6ys5-z1WEgy9SY'
    },
    {
      'name': '2018 ECO 1213. Principles of Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=19RMe7uOwbWGnJCLsv1Zgbhdv5sf9W-cf'
    },
    {
      'name': '2018 ENG 1210. Proficiency in English II (Old Syllabus)',
      'link':
          'https://drive.google.com/uc?export=download&id=12H8f0hHQiBGw4NFgfEZP9AlQ70Lizgsk'
    },
    {
      'name': '2018 ENG 1213. Proficiency in English II (New Syllabus)',
      'link':
          'https://drive.google.com/uc?export=download&id=1LM0ISfRRPeliuIj1Ehx0Lug18bxK0Ygz'
    },
    {
      'name': '2018 HRM 1213. Human Resource Management',
      'link':
          'https://drive.google.com/file/d/1VK0AiiI04N0nXr0tUhI25PiWiQKcH7ZQ/view?usp=sharing'
    },
    {
      'name': '2018 MAR 1213. Marketing Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=16-QWcpDwkgH9IOhTNeLFiYCGmCQoq3ap'
    },
    {
      'name': '2018 MAR 1213. Principles of Marketing',
      'link':
          'https://drive.google.com/uc?export=download&id=1yMvETr1KPKcTxNWciXquSPwZZ_57v7Ip'
    },
    {
      'name': '2018 MGT 1213. Business Statistics (old) ',
      'link':
          'https://drive.google.com/uc?export=download&id=1SKJ2MBmFvBlgTmpeaD-Y5L5zaUaSv8gd'
    },
    {
      'name': '2018 MGT 1213. Business Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1n__8bX74cltsDLunYpDAs-M52khL8d3E'
    },
    {
      'name': '2018 MGT 1223. Principles of Human Resource Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1QO4jwAX4fl0y7SBYP_mzJXKZkxOv2DsZ'
    },
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
                      image: AssetImage("images/sft.PNG"), fit: BoxFit.fill),
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

    _tasks!.addAll(_documents.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Frist Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_images
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
