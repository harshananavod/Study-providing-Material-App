import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp2dp1pbsc extends StatelessWidget {
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
  final _frist = [
  
    {
      //'Second Year frist Semester'
      
      'name': '2016 BPM 2123. Project Cost Managemen011',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1vcD7H9t73cqRBgjGmIf-tJvkppHMTZvC'//add link genarate
    },
      {
      
      'name': '2016 BPM 2123. Project Cost Management II 012',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1OeG0cq1E0pNPF9ayx1PUzCSQ5JVblAzz'//add link genarate
    },
      {
      
      'name': '2017 ACU 2110. Social Harmony',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1MSn0mWrCVztIk339flP8muIlneB7DJO4'//add link genarate
    },
     {
      
      'name': '2017 ENG 2210 – Proficiency in English IV',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1s2QCtJZAILGau4REM9PpOLH8zPcW'//add link genarate
    },
      {
      
      'name': '2018 ACU 2110. Social Harmony',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1jxwkE13wVQ7Ni1Ogjsft2ZHU6FaCzVDO'//add link genarate
    },
     {
      
      'name': '2018 BPM 2123. Project Cost Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ReNJGAAymUMcHVNdzV5cHPYjOGxa4RuA'//add link genarate
    },
      {
      
      'name': '2019 ACU 2110. Social Harmony (Old Syllabus)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1A5OnH-TiqTz5Uc0jREhhuZ0QE0157uA8'//add link genarate
    },
     {
      
      'name': '2019 ACU 2110. Social Harmony and Active Citizenship',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=181Ttbt6JRsuChrs9J3adpPAqVGMmEUT1'//add link genarate
    },
      {
      
      'name': '2019 BPM 2113. Project Human Resource Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1yMEpJdHP3KNXFe1ukN9-JIEvLBDNLWVQ'//add link genarate
    },
     {
      
      'name': '2019 BPM 2123. Project Cost Management (Part – II)'
,//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1qb-LKnFba3VIcWC-ZqDQtkerq4BHsrPX'
    },
      {
      
      'name': '2019 BPM 2143. Legal Framework for Project Management'
,//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1JPOlUbHuMYyQ6oWcCwo4HKdygVntP1d0'
    },
     {
      
      'name': '2019 BPM 2153. Operations Research',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1dumZc0k59is8BUGWwiSiNb-9p5INSAug'//add link genarate
    },
      {
      
      'name': '2019 ENG 2110. Proficiency in English III',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1exOs2OfN87rUQyGORIJlMMPRY2AOniRS'//add link genarate
    },
    {
      
      'name': '2019  ENG 2113. Proficiency in English III',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1mJu8G5p5ssplsEJW7i3CRcl941G5XlJu'//add link genarate
    },
     {
      
      'name': '2019 PM 2113. Project Schedule Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1BpJn9H06SiZLIyVDbfIs4DDK_N304Sl1'//add link genarate
    },
     {
      
      'name': '2019 PM 2123. Project Communication and Information Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=16iXyQSe8JEhVvVMLXnQ1qc2WI3p2HgTk'//add link genarate
    },
     {
      
      'name': '2019 PM 2123. Project Cost Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=12b-OWtnZY3BCa4qRl_iuH_kM6FsCjDlM'//add link genarate
    },
     {
      
      'name': '2019 PM 2143. Environmental and Disaster Management',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1NKfis3GS-HAi9YvnO5_CVizTUHkX87Jv'//add link genarate
    },
    
  ];

  final _second = [
    //'Second Year Second Semester'
     {
      
      'name': ' 2016 ACU 2210. Basic Science for Non-Science Students',

      'link':'https://drive.google.com/uc?export=download&id=1ilYsChSLNyGBqE7InXz7fg9nMAN8Pe_x'
    },
      {
      
      'name': '2016 BPM 2113. Project Human Resource Management',
'link':'https://drive.google.com/uc?export=download&id=1euribXJjy0042DriL-_fW1Rui2-hO5_O ',
    },
    {
      
      'name': ' 2016 BPM 2143. Legal Framework in Project Management014',

      'link':'https://drive.google.com/uc?export=download&id=1qB2yoP4woAcugngk945u9QOac4zqWSJq',
        
    },
      {
      
      'name': ' 2016 Operations and Quality Management',

      'link':
          ' https://drive.google.com/uc?export=download&id=1epD-sQnnexvpiHzIHIofwX4SLaCy7Z6m'//add link genarate
    },
    {
      
      'name': '2016 BPM 2253. Regional Planning and Development'
,
      'link':'https://drive.google.com/uc?export=download&id=1ogRWQUfibXBmOZUWOgfEFNga-dMtEEQt'
          
    },
      {
      
      'name': '2016 ENG 2210. Proficiency English - IV.'
,//add your paper name
      'link':'https://drive.google.com/uc?export=download&id=1Zgu9tpA-JnHVs4FUjSFgD7qbjrU-5yg0 '
       
    },
    {
      
      'name': '2017  BPM 2113. Project Human Resource Management'
,
      'link':
          'https://drive.google.com/uc?export=download&id=14CalVVpMCnRxPZvbjOgPcB6xL-P0moIV ' 
    },
      {
      
      'name': '2017 BPM 2113. Project Human Resource Management'
,//add your paper name
      'link':
          ' https://drive.google.com/uc?export=download&id=1zUdp5rBj7bDB6Wbl-l_6Cl9Q7oItnhZj '
    },
    {
      
      'name': ' 2017 BPM 2143 – Legal Framework in Project Management',
//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15GInnMwHQxrZEb_4M0q51N7zHqvaJQNg',//add link genarate
    },
      {
      
      'name': '2017 BPM 2213 – Operations and Quality Management',

      'link':'https://drive.google.com/uc?export=download&id=12TwSQCTxsLf1Gq7zJWLEb1YM1vbFjWkY '
        
    },
    {
      
      'name': '2017 BPM 2213 – Operations and Quality Management',

      'link':'https://drive.google.com/uc?export=download&id=1LD_nJs_9fMQEp_P-4cXlvCG7-rOCqDAp ',
         
    },
      {
      
      'name': '2017 BPM 2253 – Regional Planning and Development',

 
      'link':
          ' https://drive.google.com/uc?export=download&id=10Pnt4a19Wk3TptGsKGYYmjxS6qp9BZQ5'
    },
    {
      
      'name': '2017 BPM 2253 – Regional Planning and Development',


      'link':'https://drive.google.com/uc?export=download&id=1JGY_s8sD3_Eoswe67BhlOw5D3CLk7MVl',
 
    },
      {
      
      'name': '2018 ACU 2210. Basic Science for Non-Science Students',
      'link':'https://drive.google.com/uc?export=download&id=1KY8Cw7L01x1AGxCy3pOjeWr3cPXskU21 ',
      
    },
    {
      
      'name': ' 2018 BPM 2113. Project Human Resource Management'
,
      'link':'https://drive.google.com/uc?export=download&id=1cyT4Dyj0kM0yzjrKt-jI1IEfq4kQAxpo'
     
    },
      {
      
      'name': '2018 BPM 2143. Legal Framework for Project Management'
,
      'link':
          ' https://drive.google.com/uc?export=download&id=1v6Q2LVUeP3VvqhtygoAHDl9yA-pUieBW '
    },
    {
      
      'name': '2018 BPM 2213. Operations and Quality Management'
,//add your paper name
      'link':'https://drive.google.com/uc?export=download&id=15WvE4h9Bzvi3goyzQmNrBO7vbc3Kffzo '
         
    },
      {
      
      'name': '2018 BPM 2253. Regional Planning and Development'
,
      'link':'https://drive.google.com/uc?export=download&id=1yM8lhpEep91POs4EMuRgnH_eDFvP_6M8 '
        
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

    _items.add(_ItemHolder(name: 'Second Year frist Semester'));
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
