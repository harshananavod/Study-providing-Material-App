import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';


import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp4dp2pbsc extends StatelessWidget {
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
        title: 'Forth year',
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
    
	//4.1 sem bs
	{
	'name': '2015 ACC 4113 - Advanced Taxation I' ,
'link':
        'https://drive.google.com/uc?export=download&id=1BtCAJs0Ywk35T6rNnaLGpEoGGwUwCH5Q'
		},
		{
		
'name': '2015 ACC 4113 - Advanced Taxation II' ,
'link':
        'https://drive.google.com/uc?export=download&id=1nfZdJoR7SEiFypsLEtdUmNqMZeF7sTMb'
		},
		{
		
'name': '2015 ACC 4123 - Public Sector Ecounting ' ,
'link':
        'https://drive.google.com/uc?export=download&id=192b1VZbruUxWYRUJJSjVzHPZYAAqj4FE'
		},
		{
		
'name': '2015 ACC 4133 - Advanced Management Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=169u1WgrrQB8Nf5-CdlVAS1gT1CmXLIS9'
		},
		{
		
'name': '2015 ECO4113 - Cost Benefit Analysis' ,
'link':
        'https://drive.google.com/uc?export=download&id=1R1lJYIgFdoa7pIfqT18dkLSeA9uZ3RQV'
		},
		{
		
'name': '2015 ECO4123 - International Trade _ Finance' ,
'link':
        'https://drive.google.com/uc?export=download&id=1I8bfEekf8TILZ1W26st9-5vAzCVbKCDr'
		},
		{
		
'name': '2015 ECO4133 - Issues in Economic Development' ,
'link':
        'https://drive.google.com/uc?export=download&id=1Zzs8s32R2BHd511etarBAVjEcGGAuMk_'
		},
		{
		
'name': '2015 HRM 4113 - Strategic Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1N5KZS15mKRY_v16ZJpNp-1wV_whtcle_'
		},
		{
		
'name': '2015 HRM 4123 - Advanced  Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=18sh-t4GyytlFoCD4gKON9T0YDUootpUW'
		},
		{
		
'name': '2015 HRM 4143 - Applications of  Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1vY4dvK3qscR0PAGnRxlXjEEParPkcasj'
		},
		{
		
'name': '2015 MAR4113 - Sales Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1v-jHNToihqxlGONWEgX8fS2cfMvTXnAC'
		},
		{
		
'name': '2015 MAR4123 - Customer Relations in Marketing' ,
'link':
        'https://drive.google.com/uc?export=download&id=12kRNRpc6bh8BI5K4U8vDiWohc6qNRPjY'
		},
		{
		
'name': '2015 MAR4133 - Marketing Research' ,
'link':
        'https://drive.google.com/uc?export=download&id=1ifeIa8eqy2tHTWeJNjqVZdKe9r-4UJ6L'
		},
		{

'name': '2015 MGT4113- Total Quality Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1aY_sMOivgIRoo9AAW9w104Ya62XYdlHC'
		},
		{
		
'name': '2015 MGT4123-Research Methods' ,
'link':
        'https://drive.google.com/uc?export=download&id=1llzW7pbI0RClTUObJUWhgxCOHZKBQBNY'
		},
		{

'name': '2015 MGT4133-Strategic Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1WqhrJEYDXDyc484inar3hikJlkyDnGhh'
		},
		{
	
		
'name': '2016 ACC 4113 GÇô Advanced Taxation' ,
'link':
        'https://drive.google.com/uc?export=download&id=1DwJYTXmnDR0VgcUL0pyzuTMl40aguIqo'
		},
		{

'name': '2016 ACC 4123 GÇô Public Sector Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=1seUS20XhYYrR4MtK0fIG3cgsZaVOGivg'
		},
		{
		
'name': '2016 ACC 4133 GÇô Advanced Management Accounting Part I' ,
'link':
        'https://drive.google.com/uc?export=download&id=13l3AY3LOKII_ySNFspqnapVFWGLesl41'
		},
		{

'name': '2016 ACC 4133 GÇô Advanced Management Accounting Part II' ,
'link':
        'https://drive.google.com/uc?export=download&id=1LFIxz93E0AH72zV44uh0IwTytEQoBvwz'
		},
		{
		
'name': '2016 ECO 4133 GÇô Issues in Economic Development' ,
'link':
        'https://drive.google.com/uc?export=download&id=1IQmNOAPh-2EATaxt-SM3B7HVL5o9_6Dl'
		},
		{

'name': '2016 HRM 4123 GÇô Advanced Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1RkaVbkl6uRblYsC1n1-Fz1mhsBsQxIVn'
		},
		{
		
'name': '2016 HRM 4143 GÇô Applications of Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1ybSfUd-Rf1u3FtsYmYjHaWfs7aZGVZUV'
		},
		{

'name': '2016 MAR 4113 GÇô Sales Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1qTe-TTN-nQGfvhJ6P9GbmQRWiHFikizj'
		},
		{
		
'name': '2016 MAR 4123 GÇô Customer Relations in Marketing' ,
'link':
        'https://drive.google.com/uc?export=download&id=1V6Cktal7_Bb1woPA-G9N0gWUTqDtPuWJ'
		},
		{

'name': '2016 MAR 4133 GÇô Marketing Research' ,
'link':
        'https://drive.google.com/uc?export=download&id=1zai_MAj9ZJuMP1_zfzXkUkW4vcUa0Cbb'
		},
		{
		
'name': '2016 MGT 4113 GÇô Total Quality Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1D9Gwo88E3x_ULdVo7kpE-f881JVysm1X'
		},
		{

'name': '2016 MGT 4133 GÇô Strategic Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=14VlCtVI11exq4BoeRW1Xq2YI8K6Iwrri'
		},
		{
		
'name': '2017 ACC 4113. Advanced Taxation ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1a-DXsYbYIqIlNq-xgoHftF09hCYKqYke'
		},
		{

'name': '2017 ACC 4123. Public Sector Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=1j3bHfRIGYdHa5hI8MxX1ZQBaWjr2OX9H'
		},
		{

'name': '2017 ACC 4133. Advanced Management Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=1obX0WaAkPNHen5iIV-PCVvO2K1cs4hgx'
		},
		{
		
'name': '2017 ECO 4113. Cost Benefit Analysis' ,
'link':
        'https://drive.google.com/uc?export=download&id=1scmSFPkoHg0dJH-9GuSREzsUi9UyNykx'
		},
		{

'name': '2017 ECO 4133. Issues in Economic Development' ,
'link':
        'https://drive.google.com/uc?export=download&id=1DYKf8UeLOLin0BZyCsWECS5DjPWKKdlh'
		},
		{
		
'name': '2017 HRM 4113. Strategic Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1mnpxrQDOO3w1Ll_KjpI1HKtCaHKF2Jh7'
		},
		{

'name': '2017 HRM 4123. Advanced Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1Vxaa2izQuWZymfvl1lC-bEvrTV9LLic_'
		},
		{
		
'name': '2017 MAR 4113. Sales Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1cnNK0SiMdmTT3ubzG3q3oUHeVyydT34P'
		},
		{

'name': '2017 MAR 4123. Customer Relations in Marketing' ,
'link':
        'https://drive.google.com/uc?export=download&id=13H_Pk5XKEmC9UZZlrsi1f0xsIqiicrWb'
		},
		{

'name': '2017 MAR 4133. Marketing Research ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1-F3mFEG5DhhgkPNXjUNhWgq8eO-axCsu'
		},
		{
		
'name': '2017 MGT 4113. Total Quality Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1nEtAo8NY3kiM51rxY13x-9viubu-1kr-'},
		{

'name': '2017 MGT 4123. Research Methods' ,
'link':
        'https://drive.google.com/uc?export=download&id=1YcjsmReCjmRiuiz-cSN0wAmMf3bizKXf'
		},
		{
		
'name': '2017 MGT 4133. Strategic Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1-uIPFRRn11GF5v1PJdZBCah1JIVSj5vA'
		},
		{

'name': '2018 ACC 4113. Advanced Taxation' ,
'link':
        'https://drive.google.com/uc?export=download&id=1Xcy_HOlmxaueFQlG5DfZKo_Ba4yrUxd0'
		},
		{
		
'name': '2018 ACC 4123. Public Sector Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=1fNPW9KNdaoahK9HrLoJvHgneOpfrA3Fe'	
		},
		{

'name': '2018 ECO 4113. Cost Benefit Analysis' ,
'link':
        'https://drive.google.com/uc?export=download&id=1rSKcI7AxWt88BfEHSOWGqRqBPiAzhYJ7'
		},
		{

'name': '2018 ECO 4123. International Trade and Finance' ,
'link':
        'https://drive.google.com/uc?export=download&id=1fkogEVPUXR7B2OHdMs25p-W9y6DWJak7'	
		},
		{

'name': '2018 ECO 4133.Issues in Economic Development' ,
'link':
        'https://drive.google.com/uc?export=download&id=11BMr0D18CX-uxtksHIUZQIQ6eyfD30rM'	
		},
		{

'name': '2018 HRM 4113. Strategic Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1XEEeV4cdWwZl3QovrCJnv0eLaHAlesPw'
		},
		{

'name': '2018 HRM 4123. Advanced Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1R0KRsDPGDVhopxGnCoSs0AhHBQauwZHL'
		},
		{

'name': '2018 HRM 4143. Application of Human Resource Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1HoNKkPKEtmfio6n9218bvIX3MPmbSM4R'	
		},
		{

'name': '2018 MAR 4113. Sales Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1jOaWTvIdDgVNJN9dD2pWkDEoR__9mO4k'	
		},{

'name': '2018 MAR 4123. Customer Relations in Marketing' ,
'link':
        'https://drive.google.com/uc?export=download&id=1ys9IK_R_lO5rUTZg8x19MjjvvvKrdAXi'
		},
		{
		
'name': '2018 MGT 4123. Research Methods' ,
'link':
        'https://drive.google.com/uc?export=download&id=1e2vE2Xym-X5jOyG9KkZFsb-GPEhuEldC'	
		},
		{

'name': '2018 MGT 4133. Strategic Management' ,
'link':
        'https://drive.google.com/uc?export=download&id=1IA3wBAcZi5IvI4Hg5dKHb-ddWXGAmdCW'	
		},
	
	
	
	
	
  ];

  final _images = [
    //intern
	{

'name': 'INTERN' ,
'link':
        ''	
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

    _items.add(_ItemHolder(name: 'Forth Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_images
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
