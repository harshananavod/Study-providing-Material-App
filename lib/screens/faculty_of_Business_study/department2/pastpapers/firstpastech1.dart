import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp1dp1pbsc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frist Year',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Downloader',
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
    //'first Year frist Semester'

    {
      'name':
          '2015 BPM 1143-Principles of financial accounting part 2', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1HYssxTinTHdEMrUdELgyhLboKSJnZsxB' //add link genarate
    },
    {
      'name':
          '2015 BPM 1143-Principles of financial accounting', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1oi_Vq9vVvELpVtY_AfMinwrpUo-dZtyk' //add link genarate
    },
    {
      'name':
          '2015 BPM 1143-Principles of financial accounting', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1oi_Vq9vVvELpVtY_AfMinwrpUo-dZtyk' //add link genarate
    },

    {
      'name':
          '2015 BPM 1143-Principles of financial accounting', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13EYiqSRu6bkdHyYvuaxoiOrA5577vNpz' //add link genarate
    },
    {
      'name': '2015 BPM 1123 Business Economics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1EE2sDm868DJar8qx2CebreKZxc-mkRTP' //add link genarate
    },
    {
      'name': '2015 BPM 1133-Business Mathematics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1odm6nM1sTG5k6vo2r9a_WFc5d3HU2fr1' //add link genarate
    },
    {
      'name':
          '2015 BPM 1153 Fundamentals of Project Management', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1GWsXXcJvaeC7LYV5lyFIRq9ecjYa0yOf' //add link genarate
    },
    {
      'name': '2016 BPM Principles of Management', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1lidVRFz4YGArkRxLX9vk5eRX28Za1gLZ' //add link genarate
    },
    {
      'name': '2016 BPM 1123 Business Economics ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ozm8tJXR2zYfxNVt7b6h4qPn61xdS8M1' //add link genarate
    },
    {
      'name':
          '2016 BPM 1153 Fundamentals of Project Management', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1TZ3fDEN99C03FP_1L6FmfjZic4f1FNG9' //add link genarate
    },
    {
      'name': '2017 BPM 1113 Principle of Management', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=157aeRkNcECjHck039k2GRtflhQG1zeA_' //add link genarate
    },
    {
      'name': ' 2017 BPM 1123 Business Economics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1eJxgQvy37ziMhOrKOokOVUhe2h1KAoKf' //add link genarate
    },
    {
      'name': '2017 BPM 1133 Business Mathematics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1PowhmMdxNvFjD01Bs36k-0OvU2KWSwi5' //add link genarate
    },
    {
      'name':
          '  2017 BPM 1153 Fundamentals of Project Management', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1zawFBhLsVys4daym20YGlFHfy9hViI2l' //add link genarate
    },
    {
      'name':
          '2018 BPM 1113 Principle of Management(old syllabus) ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1woRjTg5i5V1aMHvN_kktNESFst67JCT3' //add link genarate
    },
    {
      'name':
          '  2018 BPM 1143 Financial Accounting part 1', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1E7OdGNFdtc5_KlBbRI8wiziiE3CyEgCE ' //add link genarate
    },
    {
      'name':
          ' 2018 BPM 1143 Financial Accounting part 2 ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1_01cpMo8mQQcJU4sAYKVKV8sG9BwTQFL' //add link genarate
    },
    {
      'name': '2018 BPM 1123 Business Economics ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-xVQK_pDNRWSKeuR6_mhiDlKhbd4vWCX   ' //add link genarate
    },
    {
      'name': ' 2018 BPM 1123 Business Mathematics ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1i-bCNMe7hX_IzSNCAJdLDayg7AE0l1G8' //add link genarate
    },
    {
      'name':
          ' 2018 BPM Fundamentals of Project Management ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=19cjwiT99DxYmuozZZ-UARDdjdTkM4lJ6 ' //add link genarate
    },
  ];

  final _second = [
    //'first Year Second Semester'
    {
      'name':
          ' 2016 BPM 1213. Project Scope and Time Management', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=16wq3hMnENgm4E9Mm1psK87crh7yabiJ0 ' //add link genarate
    },
    {
      'name':
          '2016 BPM 1223. Project Accounting and Finance Part - II. ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=16VObupB_BZCa1lAlb-UKmYESkX7l8ROI ' //add link genarate
    },
    {
      'name':
          '  2016 BPM 1233. Fundamentals of Information Technology Theory', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1e77pg3fLaseGely1fJsK1HMj8-7PA2U- ' //add link genarate
    },
    {
      'name':
          '  2016 BPM 1253. Project Communication Part I.pdf ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1h4XYuBz8X8eXk8IpqyUSa5xmsZ_SUlLk ' //add link genarate
    },
    {
      'name': '2017 BPM 1243 - Business Statistics ', //add your paper name
      'link':
          '  https://drive.google.com/uc?export=download&id=1tvVpBYNu4Y8DF2flvVd4r_1ro24BpWNd ' //add link genarate
    },
    {
      'name':
          '  2017 BPM1213 – Project Scope and Time Management - I ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1OL7tmgtP_7mOMLfcn5D5CRGhZe52DDzG ' //add link genarate
    },
    {
      'name':
          '2017 BPM1213 – Project Scope and Time Management - I ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1JnCmnf5fr9Oq8q5ILHQpikg_4rjtNPhL ' //add link genarate
    },
    {
      'name':
          ' 2017 BPM1223 – Project Accounting and Finance - I ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1D7yO3Ta19b9EiG9UOrEyWcrw2ZLQA4g1 ' //add link genarate
    },
    {
      'name':
          '   2017 BPM1223 – Project Accounting and Finance - II ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1UUvJ7Qu0JOdHUkK6mXtFAjEZUAva2mYW ' //add link genarate
    },
    {
      'name':
          '  2017 BPM1233 – Fundamentals of Information Technology (Practical)', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1gUiB4t9Lu52HmLrZeLDg-whG9x5umopt  ' //add link genarate
    },
    {
      'name':
          '2017 BPM1233 – Fundamentals of Information Technology (Theory)', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1wv08O0og8JSoqtu2zkOcKS2bdx_ihXwl   ' //add link genarate
    },
    {
      'name':
          ' 2017 BPM1253 – Project Communication - I ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=15VT91TmqyqHIcrUb3hRW8HexH0prsK_z' //add link genarate
    },
    {
      'name':
          '2017 BPM1253 – Project Communication - II  ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1YS2rHAh58Ksd26WWTQcC_Gch8Lvslq27' //add link genarate
    },
    {
      'name': '2018 ACU 1211. Career Guidance ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ThMQ3mMAWkTHpK65APt_rgOhlMTIw8q-  ' //add link genarate
    },
    {
      'name':
          ' 2018 BPM 1213. Project Scope and Time Management - part I ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1t4YGYnx96cfVsWB-s8t6OgxsO2_U2Fuf ' //add link genarate
    },
    {
      'name':
          ' 2018 BPM 1213. Project Scope and Time Management - part II', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1Oc9MRK94K4ZLlt_J8LvfqwIe1IGsNI5e ' //add link genarate
    },
    {
      'name':
          ' 2018 BPM1223. Project Accounting and Finance - part II', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1GdGe6i-B5LKcaDtAaCGjrj54lJwLgEo2  ' //add link genarate
    },
    {
      'name':
          ' 2018 BPM1253. Project Communication Management - part I', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1kjXhsU1n3dZsuRl1modIkbsLJnGDEx5H' //add link genarate
    },
    {
      'name':
          ' 2018 BPM1253. Project Communication Management - part II', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1pXm3_tVYBoFPJgIFULSQ7_ClTjoQyhpl ' //add link genarate
    },
    {
      'name':
          '2018 ENG1210. Proficiency in English II (old Syllabus) ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1JTMt8fQOaKWupW441QFabXP0Qd5b-jj-  ' //add link genarate
    },
    {
      'name':
          '2018 PM 1213. Project Scope Management - Part I ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1K9UPDgZ8mrT_HHGEfhvZs17BLobAgAdP ' //add link genarate
    },
    {
      'name':
          '2018 PM 1213. Project Scope Management - part II ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1GOa9CqCtgGqennfqFLrsEhUJdvcDTasb  ' //add link genarate
    },
    {
      'name': ' 2018 PM 1223. Project Accounting', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1a5ELWtP-LnpGXkTU5ps_muz9zTwvz9hI ' //add link genarate
    },
    {
      'name':
          ' 2018 PM 1233. Fundamentals of Information Technology - Practical', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1nGSodDf8AQmBHvadwxoAmmbYN1kYES-h ' //add link genarate
    },
    {
      'name':
          ' 2018 PM 1233. Fundamentals of Information Technology - Theory ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1dmNfRxp8l-VaPa0idyFH3WYEC18TZpX4' //add link genarate
    },
    {
      'name': '2018 PM 1243. Business Statistics  ', //add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1IrgOZJyOsSFD6qlbENPZnL9evh-Qaipq' //add link genarate
    },
    {
      'name': ' 2018 PM 1253. Project Appraisal ', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1gLrCJAJR6uIeCl9_PtvW1HaHOU669Vh8  ' //add link genarate
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

    _tasks!.addAll(_frist.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Frist Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Second Year Second Semester'));
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
