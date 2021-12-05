import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp3dp2p extends StatelessWidget {
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
        title: 'Third Year',
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
    //Third Year First Semester

    //2014
    {
      'name': '2014   ICT3113 - Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1GZfXp57b9xiyzj01gTGnePEiYqRBm8gX'
    },

    {
      'name': '2014   ICT3122 - Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=13HlGtMFH5aBb0nGGltb7DiF2GVaa67DP'
    },

    {
      'name': '2014   ICT3142 - Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=1GUnBTqzsmr9v8L5uFPMcto7jSH47_mo3'
    },

    {
      'name': '2014   ICT3152 - Server Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1oP6ngY3MbKt_lcRtOK2UX5PN4pZ-wVIv'
    },

    {
      'name':
          '2014   ICT3162 - Practical for Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1DcZ4QgThNt5MPQdASjRpL4VtB3is1UxG'
    },

    //2015
    {
      'name': '2015   ICT3113 - Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1aZD-kATF2-hIUu8J1kCFKUUcIGRnjka3'
    },

    {
      'name': '2015   ICT3122 - Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1f1mcV7bLb4zSHOxDfb6DmtS01ou2DtCg'
    },

    {
      'name': '2015   ICT3142 - Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=1JQfhwPhZED-tsIcO8yKBOjlE5MTpQBV5'
    },

    {
      'name': '2015   ICT3152 - Server Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1RRbDiyEnR_lm6tRkI8z_LmP8DVxGyyti'
    },

    {
      'name':
          '2015   ICT3162 - Practical for Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1nu7pduWDiAe6O8Wflb85nSRrVsaRW73Z'
    },

    //2016
    {
      'name': '2016   ICT3113  - Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=12nlMoCU-1zQ6OFX5V0fvdTAQdGHqG6is'
    },

    {
      'name': '2016   ICT3122 - Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1YKaI2qEstAeVQOtdZutRQ9kUbQkzMYLG'
    },

    {
      'name': '2016   ICT3142 - Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=1mAqFL2HF4gMcb3MCcr-4imM667nTdJVe'
    },

    {
      'name': '2016   ICT3152 - Server Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1hBDxp-G4lIvElZSNNJZ-DawFy2qHbxln'
    },

    {
      'name':
          '2016   ICT3162 - Practical for Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1AJqYCIli0qN7hVviwt7X79LcC-8vz-xX'
    },

    //2017
    {
      'name': '2017   ICT3113 - Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=17qKeYEGg1LL90FwDnNVRE8Vqcx7GuU1I'
    },

    {
      'name': '2017   ICT3122 - Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1DnFtIBhpHGrZpyzaEg-UZ1SBq9NPF0ri'
    },

    {
      'name': '2017   ICT3142 - Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=1FIMKAm0xFXHI62DICoq40oHGpG2DVLNn'
    },

    {
      'name': '2017   ICT3152 - Server Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1VMjMELcg8W3RgRHp_D1lWCGAyTsk4mb0'
    },

    {
      'name':
          '2017   ICT3162 - Practical for Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1Eg_2OB9eoeyYhtVs9yEaYHDVG56dpdu3'
    },

    //2018
    {
      'name': '2018   ICT3113 - Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=13g_bNksXfoyYYrrnFqHbM-_fL4HZ9IWd'
    },

    {
      'name': '2018   ICT3122 - Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1ahLgEPNXsogux_wIZBqMdMhJMjXBxzXb'
    },

    {
      'name': '2018   ICT3142 - Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=1wXUQLZsA475mYSGGBVGyrbYNacStTxP2'
    },

    {
      'name': '2018   ICT3152 - Server Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1Qjw6NSJA8P-B1TSDwkn2IaJUnZGKBsF7'
    },

    {
      'name':
          '2018   ICT3162 - Practical for Advanced Database Management Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1X9YR0iLASLsrZ9MipsLy4z_wuNKFY9a_'
    },
  ];

  // ignore: non_constant_identifier_names
  final _Second = [
    //Third Year Second Semester

    //2014
    {
      'name': '2014   ICT3222 - Internet Security',
      'link':
          ' https://drive.google.com/uc?export=download&id=1YoBUHdUXrB4J7IGOJd7frXfMEjLClxF0'
    },

    {
      'name': '2014   ICT3232 - Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1Sf4aMxvcIHs9NZaxwSRddF4Xz6TIEACv'
    },

    {
      'name': '2014   ICT3242 - Internet Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1OzA-QFxONa3Mc408jldNSwENYu8aR5Gx'
    },

    {
      'name':
          '2014   ICT3252 - Practical for Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1qaypqlmWfRvJOEBw757Z9gabBhSoBHw4'
    },

    {
      'name': '2014   ICT3262 - Practical for Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=12W32K8FXkekRdIkF4R0Pw1hvv1rgTHsK'
    },

    //2015
    {
      'name': '2015   ICT3213 - Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1aZNa64JAmqR6wCht3zJjSTXksyFHEY1T'
    },

    {
      'name': '2015   ICT3222 - Internet Security',
      'link':
          'https://drive.google.com/uc?export=download&id=1e08k0J_QqgESAkhzdbwASbDUHsWxn-4c'
    },

    {
      'name': '2015   ICT3232 - Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1Fg_tMJecfZm_kjW3idQW_qC_iIJF8ql7'
    },

    {
      'name': '2015   ICT3242 - Internet Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1z2d2yMHe8TSg29og1I1Zy96SvgvsQozf'
    },

    {
      'name':
          '2015   ICT3252 - Practical for Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1wGb3jC_7NQZLKAXLKxITVNBv1mODgYVe'
    },

    //2016
    {
      'name': '2016   ICT3222 - Internet Security',
      'link':
          'https://drive.google.com/uc?export=download&id=1UbLQByWPSaIrjHKM_8cbvVvwm67xEXAL'
    },

    {
      'name': '2016   ICT3232 - Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1yr3FVKVhkUelUTao90YKjCbdiYhtKzlF'
    },

    {
      'name': '2016   ICT3242 - Internet Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1IvbtvexBjQGc_yBlxaIOh_90rAj-enHi'
    },

    {
      'name':
          '2016   ICT3252 - Practical for Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1zDIiJg-6ZxMac6VuJ8JAy6ysfPTZMSZh'
    },

    {
      'name': '2016   ICT3262 - Practical for Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1WXCZbWsYBwsxR2PSdQ9reETbTwQidmtN'
    },

    //2017
    {
      'name': '2017   ICT3213 - Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1W-TFVvmOW21ddcLkfX5GTBVs-tEwPqAY'
    },

    {
      'name': '2017   ICT3222 - Internet Security',
      'link':
          'https://drive.google.com/uc?export=download&id=1RmVvGZDHRI-ohSjVOdDFkG-tSWHxoMbn'
    },

    {
      'name': '2017   ICT3232 - Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1rGfY4zF7b4YEPTYZi0yiZK5qRygVgknr'
    },

    {
      'name': '2017   ICT3242 - Internet Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1jBR6DUOLmRE6jYRT1KAG4drzvnItevul'
    },

    {
      'name':
          '2017   ICT3252 - Practical for Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1f-5TjDrFUhU2BUq5IVCZg9fxpJce5Gq0'
    },

    //2018
    {
      'name': '2018   ICT3213 - Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1JGDeBOuWhlrX06DJhWoA58mXLGbLsP71'
    },

    {
      'name': '2018   ICT3222 - Internet Security',
      'link':
          'https://drive.google.com/uc?export=download&id=1E7AuvlH7FBbcJlvkH-_-uVhd414XLuw5'
    },

    {
      'name': '2018   ICT3232 - Multimedia and Web Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1qwyCp3oYQVT9oIb0gUAQhpwACdUloRgf'
    },

    {
      'name': '2018   ICT3242 - Internet Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1TBid32bNTnDvmJWi26CViP_beKYc3SSf'
    },

    {
      'name':
          '2018   ICT3252 - Practical for Knowledge Based System and Logic Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1TTvSPQzStqpRhilSpBM4OP0oR4ocapXV'
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

    _items.add(_ItemHolder(name: 'Third Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_Second.map(
        (image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Third Year Second Semester'));
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
