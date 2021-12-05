import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp1dp2p extends StatelessWidget {
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
  final _firsts = [
    //First Year First Semester

    //2014
    {
      
      'name': '2014   ICT1113 - Discrete Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=18v53t5LpE6FVnveGJ_27PQXTRcGk0rUI'
    },

    {
      
      'name': '2014   ICT1122 - Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1Lc4tUaHOx1HK70kbNKYFIKplYFcsXjYh'
    },

    {
      
      'name': '2014   ICT1132 - Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1xvMC_8EGw1FztebIT1zUcDHEkQzKqQFi'
    },

{
      
      'name': '2014   ICT1142 - Object Oriented Program Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1LmuiBL60rr2o7BxXXhCa5UO6KRm1lhSS'
    },

{
      
      'name': '2014   ICT1152 - Practical for Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1DNZZoUefSk7exPnaOaL-xZuOixPSRrpO'
    },


{
      
      'name': '2014   ICT1162 - Practical for Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1NUwB2gquaTgvs9ccNVfQeDzLctZvh71a'
    },




    //2015
    {
      
      'name': '2015   ICT1113 - Discrete Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=10_1zd0CGgDzifnXIIKC0h5uHGHAyKc4k'
    },

    {
      
      'name': '2015   ICT1122 - Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1Eq4PR5EzPxl08Vu9_OaTM7DVGJSzPiNk'
    },

    {
      
      'name': '2015   ICT1132 - Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1-nksjLf9x3L0dnz-1pvygXwHmCyo_UvQ'
    },

    {
      
      'name': '2015   ICT1142 - Object Oriented Program Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1Skg_qWXGJs-fCfFjpP5XJjUDuU4TpNei'
    },

    {
      
      'name': '2015   ICT1152 - Practical for Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1jBoq51d0kot5iOrYISDzGOdT48obPJkM'
    },

    {
      
      'name': '2015   ICT1162 - Practical for Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1hpAD4edD1iuFohnpXFHetKsY5KTxtyaK'
    },





    //2016
    {
      
      'name': '2016   ICT1113 - Discrete Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1N4FsZl7mqFY62mx5A_MbFnIz0T_wCG61'
    },

    {
      
      'name': '2016   ICT1122 - Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1pjuhe-SBaRSeE_PT3oFq3zofRVbwmRoq'
    },

    {
      
      'name': '2016   ICT1132 - Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1n7ypgWeA2jb3X0r98gHn-ClL8x_EOtJ6'
    },

    {
      
      'name': '2016   ICT1142 - Object Oriented Program Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1_r179_lPI9NGE9JVbcnIVjweYyskUPJU'
    },

    {
      
      'name': '2016   ICT1152 - Practical for Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=18T9FefsWPrMrUQkARnqolorNl0c3N4iH'
    },

    {
      
      'name': '2016   ICT1162 - Practical for Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1MXhSzxus34x6D_l6orQCtWM-qdhhAQKo'
    },




    //2017
    {
      
      'name': '2017   ICT1113 - Discrete Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=17g2s3NABJ0ly49xBH5ykaAwwWhoKLG7m'
    },

    {
      
      'name': '2017   ICT1122 - Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1Wyn784ZKT4n-DnKJccc9XPzpNj-oEuiM'
    },

    {
      
      'name': '2017   ICT1132 - Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1uEk_sH7qVgUo1bBLb4slVefAmKqe85qh'
    },

    {
      
      'name': '2017   ICT1142 - Object Oriented Program Design’',
      'link':
          'https://drive.google.com/uc?export=download&id=1PFpavilUYjNuYYnqd3nUlVY7qEHSaGrC'
    },

    {
      
      'name': '2017   ICT1152 - Practical for Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1Q3uZKIYegtTFjSgQundtEsUJFQgBJtc9'
    },

    {
      
      'name': '2017   ICT1162 - Practical for Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1Z-_dhGHzJF4Cvp6uVoh2cWEelRboCs9k'
    },




    //2018
    {
      'name': '2018   ICT1113 - Discrete Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1U8oOX-pIh-eZr_fT8eYTH4hgFw5m51J7'
    },

    {
      'name': '2018   ICT1122 - Fundamentals of Computer Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=10xeK1ZffdCFyQ8pOsBDpkVtyRBE2e1lz'
    },

    {
      'name': '2018   ICT1132 - Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1qU5YLuQYMMKNrUJ2Kcfxp7Y7v9eGCVIx'
    },

    {
      'name': '2018   ICT1142 - Object Oriented Program Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1y2kOhOsX-nGcAoVdRjNqZXbETqKskotm'
    },

    {
      'name': '2018   ICT1162 - Practical for Introduction to Program design and Programming',
      'link':
          'https://drive.google.com/uc?export=download&id=1Q7Vfrh65PmyVS4DhouH4s1UItknQztHm'
    },

    {
      'name': '2018   ICT1172 - Practical for Object Oriented Program Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1bBJ6KA2oGcRTykIWbcP-4RZSSRNJxtcE'
    },
    
  ];



  // ignore: non_constant_identifier_names
  final _Second = [
    //First Year Second Semester

    //2014
    {
      
      'name': '2014   ACU1210 - Communication Skills',
      'link':
          'https://drive.google.com/uc?export=download&id=1ZJY8w5zE8p5BL1HTv9Fi1aMywHrlimOC'
    },

    {
      
      'name': '2014   ACU1220  - Sri Lankan Studies Social Harmony and Natural Resource of Sri Lanka',
      'link':
          'https://drive.google.com/uc?export=download&id=1khUsSxFVVlPc3KCXr3S6IAUw_gmb-GMZ'
    },

    {
      
      'name': '2014   ICT1213  - Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1G7YSPwXe3HqL0suJvl5hNWVHoYBtc-b1'
    },

    {
      
      'name': '2014   ICT1223  - Basic Electronic and Digital Logic Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1KrLwCZGrVqi2x8RmhZtCFnNE2fU14M7X'
    },

    {
      
      'name': '2014   ICT1233  - Operating System',
      'link':
          'https://drive.google.com/uc?export=download&id=1CvBikTYEmjHHvIKb9joy2a5xScDm8IE9'
    },

    {
      
      'name': '2014   ICT1242  - Practical for Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1ur3AJGIgz-YZ2Slz9ANoiRDF_YiLN6gE'
    },




    //2015
    {
      
      'name': '2015   ACU1211 - Communication Skills',
      'link':
          'https://drive.google.com/uc?export=download&id=13f8-T5AABZaJEUXEdZq60XlHSRQBE-Op'
    },

    {
      
      'name': '2015   ICT1213 - Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1_pK4m2oAY1JF_bF-NgMscRchsgkL9QP-'
    },

    {
      
      'name': '2015   ICT1223 - Basic Electronic and Digital Logic Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1NS13jH45HlyslMFW-3gK7obJ4BrYspec'
    },

    

    {
      
      'name': '2015   ICT1242 - Practical for Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1Q5M_eq6Cds4plk4W_hdRRiVKqDfeO8X3'
    },

    {
      
      'name': '2015   ICT1262 - Practical for Operating Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1glFIkmuPditpGj0SVEc2Bvhbket5KTTB'
    },





    //2016
    {
      
      'name': '2016   ICT1213 - Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1ssWRKr0hHaEXbBvz3PRDEZB-PMU9xmPT'
    },

     {
      
      'name': '2016   ICT1223 - Basic Electronic and Digital Logic Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1R-lK8pCJPR9N-cOqcaTiy4zgJgwc20yZ'
    },

     {
      
      'name': '2016   ICT1233 - Operating System',
      'link':
          'https://drive.google.com/uc?export=download&id=1pM5makA5rKuYQzhrZQptbpfU9gLWoSNi'
    },

     {
      
      'name': '2016   ICT1242 - Practical for Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1NMgGRDcFseW91SkSsUKslL1q21B124WI'
    },

     {
      
      'name': '2016   ICT1262 - Practical for Operating Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1G1DBH8ho0VchePWxVgGzd1V3sle1SdTY'
    },




    //2017
    {
      
      'name': '2017   ICT1213 - Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1TDIRnoBhajKTp0-vEGf_F1JoLpyXrzNV'
    },

    {
      
      'name': '2017   ICT1223 - Basic Electronic and Digital Logic Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1XZhKsNkcA4adXhCynXjmg8om9wnlR-5i'
    },

    {
      
      'name': '2017   ICT1233 - Operating System',
      'link':
          'https://drive.google.com/uc?export=download&id=1YPqmRT0OcSCLKe37zRlin4T-3_I4Gs75'
    },

    {
      
      'name': '2017   ICT1242 - Practical for Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1FBdDHokr3uAdmR9CwPO8eq3hTZJe668h'
    },

     {
      
      'name': '2017   ICT1262 - Practical for Operating System',
      'link':
          'https://drive.google.com/uc?export=download&id=1oCWq-_WNqZBggcs0SHUC1NthM_RIv_n2'
    },

     {
      
      'name': '2017   TICT1242 -  Fundamentals of Statistics',
      'link':
          'https://drive.google.com/uc?export=download&id=1ngKDz3HWShiQYj-eVDulNWdx3dFwa34M'
    },




    //2018
    {
      'name': '2018   ICT 1213 -  Data Structures (Old Syllabus)',
      'link':
          'https://drive.google.com/uc?export=download&id=11VjGXWKRT3yuh5pkOUJW9aqgaFNVX6ce'
    },

    {
      'name': '2018   ICT 1223 - Basic Electronic and Digital Logic Design',
      'link':
          'https://drive.google.com/uc?export=download&id=1ozBQNFFvncsp2qPfuVkQewJwGztxYJ2Q'
    },

    {
      'name': '2018   ICT 1233 - Operating System',
      'link':
          'https://drive.google.com/uc?export=download&id=15DEeW7LyQkVjeGvX8qW2wHALRUU1jQ94'
    },

    {
      'name': '2018   ICT 1242 - Practical for Data Structures',
      'link':
          'https://drive.google.com/uc?export=download&id=1SfnJZ_OZlwKQs-LFFfM-eubLRJLSy6bA'
    },

    {
      'name': '2018   ICT 1262 - Practical for Operating Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1QI3DOhh4cVSRKyDUdOIkLYBt0xEe5Zwp'
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

    _items.add(_ItemHolder(name: 'Frist Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_Second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Frist year Second Semester'));
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
