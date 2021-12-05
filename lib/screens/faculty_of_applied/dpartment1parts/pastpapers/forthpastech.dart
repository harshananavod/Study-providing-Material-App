import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';


import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp4dp1p extends StatelessWidget {
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
        title: 'FORTH Year',
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
     //'Forth Year frist Semester'
      //2014
    {
      
      'name': '2014   SCOS4113 - Advanced Numerical Analysis',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1DDc5BAxA1LhD2qBKiMoa6zCyzdelQkSL'//add link genarate
    },

    
      {
      'name': '2014   SCOS4123 - Combinatorial Mathematics and Graph Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1b2bF17PJCFJ3dVc7HuzfxfxCxeI2ILwu'//add link genarate
      },

    
      {
      'name': '2014   SCOS4133 - Networking Basics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ecudgdBXlOCq6BAGyYYF02pOaQXoe8OM'//add link genarate
      },

       {
      'name': '2014   SCOS4143 - Object Oriented Analysis and Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15QbbouEqBxqyioLyQVb1wr0p19ieEIAz'//add link genarate
      },

       {
      'name': '2014   SCOS4153 - Computer Graphics and Image Processing',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=10IwBwX8JiEvx4UeOO7QN_BII4VicL4pc'//add link genarate
      },



    //2015
    {
      
      'name': '2015   SCOS4113 - Advanced Numerical Analysis',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1MTYDv6yCIE1K525xpzSqNGhuVmTppRJh'//add link genarate
    },

    {
      
      'name': '2015   SCOS4123 - Combinatorial Mathematics and Graph Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Q9JaPLd99pxHvlCWpFxZQuQLY-fzZu_B'//add link genarate
    },

    {
      
      'name': '2015   SCOS4133 - Networking Basics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1F1sx0LWJJ1pn8L62GoyCJSIZDTx_4eXE'//add link genarate
    },

    {
      
      'name': '2015   SCOS4143 - Object Oriented Analysis and Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ccmYYkFJWKyxkX2nYLW-FuyQUcNHifNg'//add link genarate
    },

    {
      
      'name': '2015   SCOS4153 - Computer Graphics and Image Processing',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1lxJS0b6-TJjPfwE9th7GF-Q2l-3RvXWe'//add link genarate
    },




    //2016
    {
      
      'name': '2016   SCOS4113 - Advanced Numerical Analysis',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1_MY_fExbdV6AwwylUHy9grlUQrLKToCU'//add link genarate
    },

    {
      
      'name': '2016   SCOS4123 - Combinatorial Mathematics and Graph Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1bhoy7cyYO-5lgqkdKmwszPxUuyiInEYL'//add link genarate
    },

    {
      
      'name': '2016   SCOS4133 - Networking Basics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13uKG7k91oSlir9rRHTPeDkd-L_WBmX9N'//add link genarate
    },

    {
      
      'name': '2016   SCOS4143 - Object Oriented Analysis and Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1AGzCNJBoLgVQOo1eko9MHNGpKaP0zHSX'//add link genarate
    },

    {
      
      'name': '2016   SCOS4153 - Computer Graphics and Image Processing',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1eAW8TyoneMWgz8lGQuDIkZmnfpB9aj44'//add link genarate
    },





    //2017
    {
      
      'name': '2017   SCOS4113 - Advanced Numerical Analysis',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1K5hB8IULDToA0pSMulECpTZPntomMooa'//add link genarate
    },

    {
      
      'name': '2017   SCOS4123 - Combinatorial Mathematics and Graph Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1FAqKrOEUBsERWyr7pxtKvTqt_I0ngcHC'//add link genarate
    },

    {
      
      'name': '2017   SCOS4133 - Networking Basics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1lob8DuiSlLjHL_t6sYyUlv1ZElb__3ri'//add link genarate
    },

    {
      
      'name': '2017   SCOS4143 - Object Oriented Analysis and Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1t4MWqWkhUldRDR9osJ6tOWbWBccof2wI'//add link genarate
    },

    {
      
      'name': '2017   SCOS4153 - Computer Graphic and Image Processing',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=154OpjlMveeULIQlTcH0emTyHtuN6bW09'//add link genarate
    },





    //2018
    {
      
      'name': '2018   SCOS4113 - Advanced Numerical Analysis',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1p2Gh_Wu4mPe2WzN-q1fRZd2_x3u9Ef3D'//add link genarate
    },

     {
      
      'name': '2018   SCOS4123 - Combinatorial Mathematics and Graph Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1lcppkFqJrGRWmdj13Q8eoYGHe2Mqthkr'//add link genarate
    },

     {
      
      'name': '2018   SCOS4133 - Networking Basics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1nIFnsNUv821iivykJOk-yTrnmGIwfOt'//add link genarate
    },

     {
      
      'name': '2018   SCOS4143 - Object Oriented Analysis and Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1OlHmEPjBx31WhTIMyPWqlt-aqXlVvXGh'//add link genarate
    },

     {
      
      'name': '2018   SCOS4153 - Computer Graphics and Image Processing',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1jAwYnS823l95ll7sQVrQgLtJY_Xcvjjr'//add link genarate
    },
      
  ];

  final _second = [
    //'Forth Year Second Semester'
    //2014
     {
      
      'name': '2014   SCOS4213 - Compiler Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1S5o1ho6MHupZq6R_86RB7FQqrEeJISvz'//add link genarate
    },
      {
      
      'name': '2014   SCOS4223 - Theory of Computation',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1zvGQ8j2Va8EGQu3S4qxvlZQQXaCZhmse'//add link genarate
    },

    {
      
      'name': '2014   SCOS4232 - Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1862Te8j9ndUfMcSW37wcdt6np5t1Pu6j'//add link genarate
    },
      {
      
      'name': '2014   SCOS4241 - Practical for Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1HBvOW7WJOmOppToGIKgEBz8b9GEhP0ZJ'//add link genarate
    },




    //2015
    {
      
      'name': '2015   SCOS4213 - Compiler Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1LmWbeFvWpmdva7zmiPdgPTNMadnb57pL'//add link genarate
    },
      {
      
      'name': '2015   SCOS4223 - Theory of Computation',//add your paper name
      'link':
          'https://drive.google.com/file/d/1Qcxhq1u8tpQdWpoRdkoVkMMACzrm4QRy/view?usp=sharing'//add link genarate
    },

    {
      
      'name': '2015   SCOS4232 - Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1wANBMPFc1_mHAwh12Uf8KpfCEvb3Gl3z'//add link genarate
    },
      {
      
      'name': '2015   SCOS4241 - Practical for Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/file/d/1ET7TgXl3q1Rfp8Htzs9RuhdsxSFqSJC7/view?usp=sharing'//add link genarate
    },




    //2016
    {
      
      'name': '2016   SCOS4213 - Compiler Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1UjzxOuXU_dgu0ub1f3WoRw4DiZJgqNcg'//add link genarate
    },
      {
      
      'name': '2016   SCOS4223 - Theory of Computation',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1DKxDDNaN4u9F4YWtikMlWyf9Umc6aqB1'//add link genarate
    },

    {
      
      'name': '2016   SCOS4232 - Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ZTLMZL-L83TVED8CGHx-rUBKOYNJSjL0'//add link genarate
    },
      {
      
      'name': '2016   SCOS4241 - Practical for Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1d3oIgNNcHDTrNU7j46q0yJ6lGA9W1fu4'//add link genarate
    },




    //2017
    {
      
      'name': '2017   SCOS4213 - Compiler Design',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1PyRADTEpBJpcH_pH-f8F5nolYwmgEtOb'//add link genarate
    },
      {
      
      'name': '2017   SCOS4223 - Theory of Computation',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14F8NMKUnrZKyeKcm_Hqo2_HJi5Y7wGx0'//add link genarate
    },

    {
      
      'name': '2017   SCOS4232 - Numerical Solution of Partial Differential Equations- Finite Elements Method',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1DEIbCg7GrRRXRYtBhG9gGbTgMFnpAfSI'//add link genarate
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

    _tasks!.addAll(_frist.map((document) =>
        _TaskInfo(name: document['name'], link: document['link'])));

    _items.add(_ItemHolder(name: 'Forth Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Forth Year Second Semester'));
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
