import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp3 extends StatelessWidget {
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
  final _frist = [
    {
      //third year Frist Semester'

      'name': '2018 AUX 3112. Human Resource Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1mpdlNyOJrQifXgIrFkNpmjcWRFmASVlY'
    },
    {
      'name': '2018 TICT 3113. Computer Organizations - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1U9QZKginZxHo59cxLSK620nUO57XcHZo'
    },
    {
      'name': '2018 TICT 3113. Computer Organizations',
      'link':
          'https://drive.google.com/uc?export=download&id=13BIYtY_hqOnWQfinZXPsmcHabHgq48pz'
    },
    {
      'name': '2018 TICT 3122. Rapid Applications Development - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1_JFOI78uqdHK8_PT31Aq09FnTvkJ7Bov'
    },
    {
      'name': '2018 TICT 3122. Rapid Applications Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1-cPBdUp0WnrJyxMr6E0gIF6_xRtmM9dO'
    },
    {
      'name': '2018 TICT 3143. Advanced Web Programming - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1vsS96Xl0_aHG-XZstxFn5hvDQX21X-6J'
    },
    {
      'name': '2018 TICT 3143. Advanced Web Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1PmQgYCNgh4Lr039CTy0kpVr3ujdG9eUo'
    },
    {
      'name': '2018 TICT 3153. Human Computer Interaction - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=1P7xLc_INlE6_ciBVMvzZ-yjp7byTOpPs'
    },
    {
      'name': '2018 TICT 3153. Human Computer Interaction',
      'link':
          'https://drive.google.com/uc?export=download&id=125j7mBAq20bDWyUMUIprhAn5sPE3WMha'
    },
    {
      'name': '2018 TICT 3163. Mobil Computing - Practical',
      'link':
          'https://drive.google.com/uc?export=download&id=19x_IcQH9dJZCbcTliMLLh7tlUgZ-sreZ'
    },
    {
      'name': '2018 TICT 3163. Mobil Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1YZa81-IeFm6-Sh3L7OL8wWeiSClgJk4F'
    },
    {
      'name': '2018 TICT 3173. Software Engineering',
      'link':
          'https://drive.google.com/uc?export=download&id=1qhZXPaB-NuSd42gRV0ogF3kgmDeEgpcY'
    },
    {
      'name': '2018 TICT 3132. Software Quality Assurance',
      'link':
          'https://drive.google.com/uc?export=download&id=1CeC5Q0ZzdNqrYEbRFHl4ED-OWrt4olbr'
    },
  ];

  final _second = [
    //Third year Second Semester'
    {
      'name': '2018 AUX 3212. Research Methodology',
      'link':
          'https://drive.google.com/uc?export=download&id=1zIEp4gsobPn-qKjQ7Ki49ND-0nYH1GfH'
    },
    {
      'name':
          '2018 TICT 3213. Advanced Database Management Systems (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=19Tor263_XcGTUrc3m9HRT864mG9VVLKf'
    },
    {
      'name': '2018 TICT 3213. Advanced Database Management Systems (Theory)',
      'link':
          'https://drive.google.com/uc?export=download&id=1ue9iZ88vDAuF4L_IUX43WxrkUpbSJ29g'
    },
    {
      'name':
          '2018 TICT 3224. Advanced Computer Networks and Administration (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1ytbCW_Ln2kxlxzpxYneBkfGZEppbNmb0'
    },
    {
      'name':
          '2018 TICT 3224. Advanced Computer Networks and Administration (Theory)',
      'link':
          'https://drive.google.com/uc?export=download&id=13EewatmRK9gXdHgbHwTAh93w5B1tvZCc'
    },
    {
      'name': '2018 TICT 3232. Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1F6_J8ZpV1rwxhJZF2fh2ZebaghAH8SEM'
    },
    {
      'name': '2018 TICT 3242. Information Security',
      'link':
          'https://drive.google.com/uc?export=download&id=1eopciGRw_lURsNd-ZRuBXjN767B9VoqX'
    },
    {
      'name': '2018 TICT 3253. Digital Image Processing (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1vqdw23bLiCJCqbCYyGyMZ7syoQ2Tcc65'
    },
    {
      'name': '2018 TICT 3253. Digital Image Processing (Theory)',
      'link':
          'https://drive.google.com/uc?export=download&id=1x-40aeWnmWmbIYyoS2x-3QO4KN5-8Tiu'
    },
    {
      'name': '2018 TICT 3263. Essential of E-Commerce (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1ACa3NkTMUCm43yTke4kU46i_TTjaEH_m '
    },
    {
      'name': '2018 TICT 3263. Essential of E-Commerce (Theory)',
      'link':
          'https://drive.google.com/uc?export=download&id=1EbNopyD9SyrbYpI-TIzGW35yWySaSx_D'
    },
    {
      'name': '2018 TICT 3272. Computerized Accounting (Practical)',
      'link':
          'https://drive.google.com/uc?export=download&id=1QxKCNNSI7sPXEP1Y3yUt3NKQqYAvBsns'
    },
    {
      'name': '2018 TICT 3272. Computerized Accounting (Theory)',
      'link':
          'https://drive.google.com/uc?export=download&id=1AptNSDEA6M1rTyjecePwJqfeMzCc5Bmr'
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

    _items.add(_ItemHolder(name: 'Third year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Third year Second Semester'));
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
