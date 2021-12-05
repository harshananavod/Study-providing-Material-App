import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp4dp2p extends StatelessWidget {
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
        title: 'Forth Year',
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
  final _firsts = [
    //Forth Year First Semester

    //2014
    {
      'name':
          '2014   ICT4113 - Computer Architecture and Assembly Language Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1ETCkU4Zt1E8FMWCWrFdzDZQyMan0_uZr’'
    },

    {
      'name': '2014   ICT4122 - Bioinformetics and Computational Biology',
      'link':
          'https://drive.google.com/uc?export=download&id=1B-p7SZjhKcB-_FbhYab4aBpA40KjLyaT'
    },

    {
      'name': '2014   ICT4132 - Mobil Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=196Pe8LXkIWRVWRgmGTixjv4rY1lhD-ni'
    },

    {
      'name': '2014   ICT4142 - Advanced Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1U5S03OjK56dHiSyCMlFfuuAx92agwfTZ'
    },

    {
      'name': '2014   ICT4152 - E-commerce',
      'link':
          'https://drive.google.com/uc?export=download&id=1u9PuhPHmkbwYQpKEpkAD6yRr6u6uw7OS'
    },

    //2015
    {
      'name':
          '2015   ICT4113 - Computer Architecture and Assembly language Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=133SnIWOyDkMUidSSYHh7TFR_rcwdxv_s'
    },

    {
      'name': '2015   ICT4122 - Bioiformatics and Computational Biology',
      'link':
          'https://drive.google.com/file/d/1T8tMsDG73eCiVdRr6yghGJ0Dsp4vYHlF/view?usp=sharing'
    },

    {
      'name': '2015   ICT4132 - Mobile Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1mt7-JUFnsYQdJSW57udI55IacYP9Od97'
    },

    {
      'name': '2015   ICT4142 - Advance Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1KEEdu-mvEYQ4M5YazCHQj8CiyD6jrhFE'
    },

    {
      'name': '2015   ICT4152 - E-Commerce',
      'link':
          'https://drive.google.com/uc?export=download&id=15tSjNDLrWXF8zMfr0bxCRZXqcr5uKIJy'
    },

    //2016
    {
      'name':
          '2016   ICT4113 - Computer Architecture and Assembly Language Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=19TNiHYwXyznBNrr6r5hiMkzhRoe6qzHo'
    },

    {
      'name': '2016   ICT4122 - Bioinformatics and Computational Biology',
      'link':
          'https://drive.google.com/uc?export=download&id=19M4sj2ovq4ZHfrlmQDJSMK0D_ZR5aW1J'
    },

    {
      'name': '2016   ICT4132 - Mobile Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1KvBfgaIuotzT1DD6DCCigFngfSIOO-5w'
    },

    {
      'name': '2016   ICT4142 - Advanced Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1--x8o8pZpQzBX5CVWszKPyvTcGHL1hIU'
    },

    {
      'name': '2016   ICT4152 - E-commerce',
      'link':
          'https://drive.google.com/file/d/1eD3jcz15ZGG5qSadM5fbvGEHXtl7KFVc/view?usp=sharing'
    },

    //2017
    {
      'name':
          '2017   ICT4113 - Computer Architecture and Assembly Language Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1ifMAAr8t_E_s3sFP9Wfd57NdUczmt9pJ'
    },

    {
      'name': '2017   ICT4122 - Bioinformetics and Computational Biology',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZPt-X3zuiigAQlNdOjlRLxCSSB16oENE'
    },

    {
      'name': '2017   ICT4132 - Mobil Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1WJfsVVEscV4uGP2jyZIPk63cdFfd77-i'
    },

    {
      'name': '2017   ICT4142 - Advanced Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1Uu9cC7lv8-7jyho27qqBSFkciqxAnNyo'
    },

    {
      'name': '2017   ICT4152 - E-commerce',
      'link':
          'https://drive.google.com/uc?export=download&id=1oJxh1i792yjlPehGLfhbad2eDuPhtZFw'
    },

    //2018
    {
      'name':
          '2018   ICT4113 - Computer Architecture and Assembly Language Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1yL-Bjs9mOQMKPZK5_mpXmmkkyY4oxblz'
    },

    {
      'name': '2018   ICT4122 - Bioinformatics and Computational Biology',
      'link':
          'https://drive.google.com/uc?export=download&id=1lSz8VnziKH4lLStkrUq6pYSWANg9grVg'
    },

    {
      'name': '2018   ICT4132 - Mobil Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1CZOvjZ3MTCZro3NJ6PgA51cthQC4mhgr'
    },

    {
      'name': '2018   ICT4142 - Advanced Computer Networks',
      'link':
          'https://drive.google.com/uc?export=download&id=1Zq4GRiiUKC5THZ6_ydOM39XjlmsMYV2e'
    },

    {
      'name': '2018   ICT4152 - E-commerce',
      'link':
          'https://drive.google.com/uc?export=download&id=1mMC1XHsglnL_hKO1A9c4G7oe3Nn_T_8l'
    },
  ];

  // ignore: non_constant_identifier_names
  final _Second = [
    //Forth Year Second Semester

    //2014
    {
      'name': '2014   ICT4213 - Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1JrmHTSDcAl571dYCRTtKPOoTHuMiFIBD'
    },

    {
      'name': '2014   ICT4222 - Advanced Networking Technology I(Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=1om5ze-vjfUSWjHIIznD4bvg-K75aKDO-'
    },

    {
      'name': '2014   ICT4222 - Agent Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1Xk-rZwuhg-YTIfWl0eHPtnaKJHr7fMzI'
    },

    {
      'name': '2014   ICT4232 - Advanced Networking II (Switching) (1)',
      'link':
          'https://drive.google.com/uc?export=download&id=1enksLV_Ru8lIAX3GIupj1LcTR_4xlnxz'
    },

    {
      'name': '2014   ICT4232 - Advanced Networking II (Switching)',
      'link':
          'https://drive.google.com/uc?export=download&id=1DDzkzXWullJ01-RY4ub0IBpzT6-hbZZw'
    },

    //2015
    {
      'name': '2015   ICT4213 -Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1HYYx-sJgNqh2dF4ZJSsFGAQ5VgNu7mcA'
    },

    {
      'name': '2015   ICT4222 - Advanced Networking Technologies 1 (Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=11tk8Rq4ts2P3uflyST9bmov1le5Urpx_'
    },

    {
      'name':
          '2015   ICT4232 - Advanced Networking Technologies II (Switching)',
      'link':
          'https://drive.google.com/uc?export=download&id=1oxhy7a7xbk39fn9NYg0v06FWWw0pvw96'
    },

    {
      'name': '2015   ICT4242 - Agent Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1-pSFY8LZyVo67Q-09qhTtyJHFkRGdr4u'
    },

    {
      'name':
          '2015   ICT4271 - Practical for Advanced Networking Technologies I (Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=10Aw5l0w_MF7jJKTl_PpUHnE5m5Tavilv'
    },

    //2016
    {
      'name': '2016   ICT4213 - Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1GSwVk2EAjckxYkIyXYlZqkYmHSsLLwfA'
    },

    {
      'name': '2016   ICT4222 - Advanced Networking Technologies 1 (Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=11vBKnPmdBx0r-nly2QCjtneIKvJ6Ywsa'
    },

    {
      'name':
          '2016   ICT4232 - Advanced Networking Technologies II (Switching)',
      'link':
          'https://drive.google.com/uc?export=download&id=1fcd3MxNstYYCtqlvzOHNAw84kS0dduLX'
    },

    {
      'name': '2016   ICT4242 - Agent Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1mziNAp-_z9hHxa8JmYm8zpg33ScCeuli'
    },

    {
      'name': '2016   ICT4261 - Practical for Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1gjFzhCzmFlB8eCoQ5mWxd5ntpriiAB_-'
    },

    //2017
    {
      'name': '2017   ICT4213 - Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1MqDHAxndxgObjFoAmlFtAtOlm8BMkwO3'
    },

    {
      'name': '2017   ICT4222 - Advanced Networking Technologies 1 (Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=122-Ygzy8pgLvKXXnBTgm8rBZdP7g0zyl'
    },

    {
      'name':
          '2017   ICT4232 - Advanced Networking Technologies II (Switching)',
      'link':
          'https://drive.google.com/uc?export=download&id=11nzI24AhYt6k7v8Y8wG0Ai8szX7A4QV2'
    },

    {
      'name': '2017   ICT4242 - Agent Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1E86CDlTR2j3y27Suq6rA6t_G7MxJv5IQ'
    },

    {
      'name': '2017   ICT4261 - Practical for Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=13m997pd4lEjg_DhoB980xL8WmVOBqy1m'
    },

    //2018
    {
      'name': '2018   ICT4213 - Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=1GiWAkV4xGrEHiBeq3YWFrXmzxoGicry0'
    },

    {
      'name': '2018   ICT4222 - Advanced Networking Technologies 1 (Routing)',
      'link':
          'https://drive.google.com/uc?export=download&id=101JcFGX5_sch2YAYEEJSESoJnqIV_vFD'
    },

    {
      'name':
          '2018   ICT4232 - Advanced Networking Technologies II (Switching)',
      'link':
          'https://drive.google.com/uc?export=download&id=1d-e6PChXamu4SWfn12AASckkVyXq0ah_'
    },

    {
      'name': '2018   ICT4242 - Agent Technology',
      'link':
          'https://drive.google.com/uc?export=download&id=1V6S6DRSdNQGeojadodbch2sURvfW8KCK'
    },

    {
      'name': '2018   ICT4261 - Practical for Parallel and Cluster Computing',
      'link':
          'https://drive.google.com/uc?export=download&id=108shjazfjINpEuzpcFBEG5rUI2_1Zttk'
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

    _tasks!.addAll(_firsts.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Forth Year Frist Semesester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_Second.map(
        (image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Forth Year Seond Semesester'));
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
