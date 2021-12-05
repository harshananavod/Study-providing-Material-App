import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp2dp2p extends StatelessWidget {
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
        title: 'Second Year',
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
  final _first = [
    //Second Year First Semester

    //2014
    {
      'name': '2014   ICT2113  - Mathematics for Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1K-18qui6vm5T6qPO_2hrKU1C_YFflbNh'
    },

    {
      'name': '2014   ICT2133 - Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1i4jn9u-X3MD1nuuXm-d1uTy2uoiNuBw3'
    },

    {
      'name':
          '2014   ICT2142 - Visual Computing (Rapid Application Development) (1)',
      'link':
          'https://drive.google.com/uc?export=download&id=1XN0w54VpetD6kn-BYiyb8NwmoB-ijE4h'
    },

    {
      'name':
          '2014   ICT2142 - Visual Computing (Rapid Application Development)',
      'link':
          'https://drive.google.com/uc?export=download&id=1slX-vkiVfNkLJu3PiAvqXLHUHRv2pSPa'
    },

    {
      'name':
          '2014   ICT2152 - Practical for Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1_kfm1_1XJ8scHuzLFj81sbfjNOJXyVtA'
    },

    {
      'name': '2014   ICT2172 - Practical for Visual Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1g0K7R6kyek_G1VlUjTqD_25saixl379C'
    },

    //2015
    {
      'name': '2015   ICT2113 - Mathematics for Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=196U8oTm4FqWr-eqDvvJq0SSwzh0Wqk1M'
    },

    {
      'name': '2015   ICT2122 - Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1Wz4Nj5TBPrx8nvxQ9PGscU91TYLidWwf'
    },

    {
      'name': '2015   ICT2133 - Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1_UWFa_1tczi1rui442PAbI4dawZKyUyr'
    },

    {
      'name':
          '2015   ICT2142 - Visual Computing (Rapid Application Development) (1)',
      'link':
          'https://drive.google.com/uc?export=download&id=1SnsC2WepQ2yntqnGdymzCOJVivXFUrgF'
    },

    {
      'name':
          '2015   ICT2142 - Visual Computing (Rapid Application Development)',
      'link':
          'https://drive.google.com/uc?export=download&id=1gCswnWJHoUG8v23svRPMQAL9OjcAVwF_'
    },

    {
      'name': '2015   ICT2172 - Practical for Visual Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=14JpXLmS_EILiJKJZ8730TShe6bOeV1b9'
    },

    //2016
    {
      'name': '2016   ICT2113  -  Mathematics for Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1JRJpt21QB84PG6YQ87UZyyBMywYVuTpQ'
    },

    {
      'name': '2016   ICT2122 - Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1VM6xgefJDN6D5lRHud37UvrACyOFSdDi'
    },

    {
      'name': '2016   ICT2133 - Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1POEbSKoj5j5NVNP3Bh_hBvSTKkc5nUuu'
    },

    {
      'name':
          '2016   ICT2142 - Visual Computing (Rapid Application Development)',
      'link':
          'https://drive.google.com/uc?export=download&id=1Q7-ZAPU1CByuXfZROZ8ZpIaPnPblGuG9'
    },

    {
      'name':
          '2016   ICT2152 - Practical for Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1xgXi1Ylj0eTcOIo7NgjY-IBTWLkjLdPm'
    },

    //2017
    {
      'name': '2017   ICT2113 - Mathematics for Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1oCg2oXkvsy8gOV0l36sMnUovc_Nrof3C'
    },

    {
      'name': '2017   ICT2122 - Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=16ZYeZ4KsP6jlxf5Y0_d9FYC_8JqcX8jt'
    },

    {
      'name': '2017   ICT2133 - Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1eA9nKlh5FnThb2iuG-4jY38_UhfUZrs-'
    },

    {
      'name':
          '2017   ICT2142 - Visual Computing (Rapid Application Development) (1)',
      'link':
          'https://drive.google.com/uc?export=download&id=1nHbZw8v4Udb5-qmEDCvPRDI1OlqAOmK_'
    },

    {
      'name':
          '2017   ICT2152 - Practical for Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1nHbZw8v4Udb5-qmEDCvPRDI1OlqAOmK_'
    },

    //2018
    {
      'name': '2018   ICT2113 - Mathematics for Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=15qAwYA81eQ3WyOgHEcjFcgX_2RQJDJSz'
    },

    {
      'name': '2018   ICT2122 - Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1OkL1TJeFXC8QW2Oj-NyyWRnVKWse4eMC'
    },

    {
      'name': '2018   ICT2133 - Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1aaoMWaT4jYfN4jb2SnbjBoQzY6ohhKOZ'
    },

    {
      'name':
          '2018   ICT2142 - Visual Computing (Rapid Application Development) (1)',
      'link':
          'https://drive.google.com/uc?export=download&id=1HheFBvS9apodcPd70yOkM_yUUs5jyn_T'
    },

    {
      'name':
          '2018   ICT2152 - Practical for Design and Analysis of Algorithms',
      'link':
          'https://drive.google.com/uc?export=download&id=1hRd4Ku7xXDxn5d_8_4BJFND0Ql3PGqXk'
    },
  ];

  // ignore: non_constant_identifier_names
  final _Second = [
    //Second Year Second Semester

    //2014
    {
      'name': '2014   ICT2212 - Operational Research',
      'link':
          'https://drive.google.com/uc?export=download&id=1Y_tIiat9CFgB4MP01yq1wRZ5H23qHxA2'
    },

    {
      'name': '2014   ICT2222 - Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1_zGZSMBdet4uJDqk0T1_BMjGKcuIOJEd'
    },

    {
      'name': '2014   ICT2232 - Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZjYnrezFg28HLoAql33rjJpY74Bf3pQR'
    },

    {
      'name': '2014   ICT2243 - Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=19OnmwDDpma45JfsVWB8hpI5Q3Kf3fIKH'
    },

    {
      'name': '2014   ICT2252 - Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1r87vu3IHlyWire6gw5Lkzrf9di-Fhtzw'
    },

    {
      'name': '2014   ICT2262 - Practical for Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1Ahfaae543__Tm68KeNwSvQlc36ppImsb'
    },

    //2015
    {
      'name': '2015   ICT2212 - Operational Research',
      'link':
          'https://drive.google.com/uc?export=download&id=1LgyT04_TO56a9raJo9JfGvLQ4b1gN7Bw'
    },

    {
      'name': '2015   ICT2222 - Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1TRQ3G-K1mGXP3ivvtiDwNZ8lOq5Cgmw-'
    },

    {
      'name': '2015   ICT2232 - Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1fvg5pUUKgG-EIwxk45OGCUH24Hp4axH6'
    },

    {
      'name': '2015   ICT2243 - Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=17foUoCIqhfb43yE7LnkOqlj-VssRJRj6'
    },

    {
      'name': '2015   ICT2252 - Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=14Fl2LwnHkJ_Hl_2UeW6NOkVt2D5Kngp2'
    },

    {
      'name': '2015   ICT2262 - Practical for Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1HBdri59VeIVTpZSKO2WPkyGSYzcmRcxS'
    },

    //2016
    {
      'name': '2016   ICT2212 - Operational Research',
      'link':
          'https://drive.google.com/uc?export=download&id=1WVpyn8jYkCD4g11pcf6pyBb2cD4za7Up'
    },

    {
      'name': '2016   ICT2222 - Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=17eC7DjsI5KUYQsJr-t7nOUdLPllOu-Oe'
    },

    {
      'name': '2016   ICT2232 - Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1eUEkDwgtJIlVd9B0XSHN3iY45nrdOqfI'
    },

    {
      'name': '2016   ICT2243 - Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZzYNd1EVBL4UDmhwaa4GywP_64U_UEd4'
    },

    {
      'name': '2016   ICT2252 - Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1urE74ViHOxAnlZpmTnxsHxu6uByzvPCc'
    },

    {
      'name': '2016   ICT2262 - Practical for Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1NlYxiRS-mFgh4lNdLgpT0H_nKJ1WeuEg'
    },

    //2017
    {
      'name': '2017   ICT2222 - Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=12Zvv0QJUoNfIHKRlWDmK9joThZ0RDzlY'
    },

    {
      'name': '2017   ICT2232 - Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1h3fqaLmlT8JoZrWxSdW5yiOEG8MyoJsz'
    },

    {
      'name': '2017   ICT2243 - Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=1ijybtRtYngTgavmFjucqGZlZq8e0aej4'
    },

    {
      'name': '2017   ICT2252 - Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=12-GiRzDvwIpUBHy2kn9MAAm8lJFv6WlO'
    },

    {
      'name': '2017   ICT2262 - Practical for Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1I71jeFoK_8mfH_9g6teDR_8Z-vEQuVWP'
    },

    {
      'name': '2017   ICT2272 - Practical for Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=19lAUzQehdPt7P0sK03PfjmAfbEarX2Qw'
    },

    //2018
    {
      'name': '2018   ICT2212 - Operational Research',
      'link':
          'https://drive.google.com/uc?export=download&id=1Dvznx6M8BuGrqJ7bTOC4nk3xwgkFzwrM'
    },

    {
      'name': '2018   ICT2222 - Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=173CfbmsCf-UwQgePXK-y8Crvh8qhuY_7'
    },

    {
      'name': '2018   ICT2232 - Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1mJx7jXoJYh6wYaDlIJtIte1zl2utyF-N'
    },

    {
      'name': '2018   ICT2243 - Computer Graphics',
      'link':
          'https://drive.google.com/uc?export=download&id=1MxYjnQ45GZzrIxURZWkUC8jtWaeCrft4'
    },

    {
      'name': '2018   ICT2252 - Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1bVNzHmsvTT4ct-VxwjPsAG7QZKkh3dTa'
    },

    {
      'name': '2018   ICT2262 - Practical for Database Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1qoW-VKANUnNF_PqEsJzSqjBkIEfOFXjT'
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
                      image: AssetImage("images/short.PNG"), fit: BoxFit.fill),
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

    _tasks!.addAll(_first.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Second Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_Second.map(
        (image) => _TaskInfo(name: image['name'], link: image['link'])));

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
