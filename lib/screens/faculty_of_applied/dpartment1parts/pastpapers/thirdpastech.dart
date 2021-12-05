import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp3dp1p extends StatelessWidget {
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
    //'third Year frist Semester'
    //2014
    {
      'name':
          '2014   ACU3110 - Management and Entrepreneurial Skills', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1gudcimQ_3ZB7ZgH34vjBvD_Muk1llCyR' //add link genarate
    },

    {
      'name': '2014   AMA3113 – Modeling', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1mn09X-HfiMhZ5uIoRKslc4it7wmMsrKl' //add link genarate
    },

    {
      'name': '2014   AMA3123 - Mathematical Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15LCYwhHoi65ct7VzinIvkTIvy8HPUpO-' //add link genarate
    },

    {
      'name': '2014   COS3113 - Software Engineering', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1dp4H6af7L9yBJHqAUSI5NKwoUXqNawb7' //add link genarate
    },

    {
      'name': '2014   COS3122 - Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1y7m8wHR4_4-DyPzTilwDEPocdaIo9kN2' //add link genarate
    },

    {
      'name':
          '2014   COS3131 - Practical for Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1vrmHKF9RcwYWPCNMuagd2BLbT7oTy1t2' //add link genarate
    },

    {
      'name':
          '2014   STA3112 - Regression Analysis and Time Series', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1WEOoty7uWQ1HeIUImqKrlXVu9--N4Kl0' //add link genarate
    },

    {
      'name':
          '2014   STA3121 -  Practical for Regression Analysis and Time Series', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1BiAxBITkUn4-m5SFYKnQpm83cHShOeUD' //add link genarate
    },

    //2015
    {
      'name':
          '2015   ACU3110  - Management and Entrepreneurial Skills', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1eao-VZhiZQf6cABBnXFljyNaL3T0WZjV' //add link genarate
    },

    {
      'name': '2015   AMA3113 – Modelling', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1pTqCZZ4_2onKFIBXDqXroe3-2_u92eHp' //add link genarate
    },

    {
      'name': '2015   AMA3123 - Mathematical Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Hy4sty6hX2l2_Y00phKQwo6X4y64iL0s' //add link genarate
    },

    {
      'name': '2015   COS3113 – Engineering', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1z1MYbpBsY3PLmui-Ovrg7y36Qvb8NhpH' //add link genarate
    },

    {
      'name': '2015   COS3122 - Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1G5-K2-vO6I2QjqMylnQdqfieJ0HN8XKQ' //add link genarate
    },

    {
      'name':
          '2015   COS3131 - Practical for Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14tfaqwI6LYL7kEjA0Nn3--cJfa5RxKFO' //add link genarate
    },

    {
      'name':
          '2015   STA3112 - Regression Analysis and Time Series', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15btbjocA9LSN0G_eGLPH0NazFU0HBVNr' //add link genarate
    },

    //2016
    {
      'name': '2016   AMA3113 – Modeling', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ny1rLzC-8Nb8dNbhvTNZIcPrXH_-hrpe' //add link genarate
    },

    {
      'name': '2016   AMA3123 - Mathematical Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1sojb6MTQMvivpjD-4fTEe1RyEsDa2caS' //add link genarate
    },

    {
      'name': '2016   COS3113 - Software Engineering', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ksdvDIj81u8tVIIeZJNCLxabQkfsTK1x' //add link genarate
    },

    {
      'name': '2016   COS3122 - Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-jUubLd54v512Wb5GSanyHLw3aRLhMZz' //add link genarate
    },

    {
      'name':
          '2016   COS3131 - Practical for Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1I7CU8kEMMw02XYFQLDE2qCICgrtMnRUJ' //add link genarate
    },

    {
      'name':
          '2016   STA3112 - Regression Analysis and Time Series', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1GS9FJsWcqwanlM6t74a_aeLv76kW-bB4' //add link genarate
    },

    //2017
    {
      'name': '2017   AMA3113 – Modeling', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1fkjb-gJBZvG5RezHmAMLMMYbAPPzPqyT' //add link genarate
    },

    {
      'name': '2017   AMA3123 - Mathematical Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-RQnYtFEcfaSrJZMBWI_2HboTt4K95sX' //add link genarate
    },

    {
      'name': '2017   COS3113 - Software Engineering', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1RsI-mqbL8ibDRtu_2aRpzOECDvK8qNUn' //add link genarate
    },

    {
      'name': '2017   COS3122 - Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1nF2WjNAzEC5S3wRXRz9hL_JRjz_FESOl' //add link genarate
    },

    {
      'name':
          '2017   COS3131 - Practical for Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1wlIKOubeK5wzO1DSao4Pv3AHoWKHmvWr' //add link genarate
    },

    //2018
    {
      'name': '2018   AMA3113 – Modeling', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1k9dDo7wo2NnBIuwNQA07hvPB_zfc8Xpl' //add link genarate
    },

    {
      'name': '2018   AMA3123 - Mathematical Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=10yDly8n5WZzsy7nfc0GvZmg2I6XfRxog' //add link genarate
    },

    {
      'name': '2018   COS3113 - Software Engineering', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=19jBCJlFp-0NZ3oG9tIo5GjMYx0zbZO9o' //add link genarate
    },

    {
      'name': '2018   COS3122 - Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1W41wNdXSdXNsmddYPrebzo8OhC713u5f' //add link genarate
    },

    {
      'name':
          '2018   COS3131 - Practical for Operating Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1X6CnNDy9IodLq87w0hJXlAhBghl0BZel' //add link genarate
    },
  ];

  final _second = [
    //'third Year Second Semester'
    //2014
    {
      'name': '2014   AMA3213 - Analytical Dynamics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1e9GI5OimgO2d8xvDc7jJqaJRDcHkdQKd' //add link genarate
    },

    {
      'name': '2014   COS3213 - Internet Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1avT0WnQO1Ny9OrBiVePDiRV8DSza6eRE' //add link genarate
    },

    {
      'name': '2014   COS3222 - Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1XuCQb5gKZ_5tvaqd5fHtHdK7bd_07_LW' //add link genarate
    },

    {
      'name':
          '2014   COS3231 - Practical for Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1tzi09IYdpvQpbKJusDiHZXaueZXx-2bA' //add link genarate
    },

    {
      'name':
          '2014   PMA3213 - Algebraic Structures and Complex Variable', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1wPC3moiq-Ysgv_mVlumMvAyZAx6uOTH8' //add link genarate
    },

    {
      'name':
          '2014   SCOS3213 - Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Kfi-4zXkzDCj2YuP_1bngkfCbbnZbBPR' //add link genarate
    },

    {
      'name': '2014   SCOS3223 - Parallel Computing', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1n_V6R7jRBDOQTpKhdQYrUeFriN5Ow-zS' //add link genarate
    },

    {
      'name':
          '2014   SCOS3241 - Practical for Parallel Computing', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1AyTL2YD99uOmd1TMO82yda_q5et4AwcH' //add link genarate
    },

    //2015
    {
      'name': '2015   AMA3213 - Analytical Dynamics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1H01Gj1ZevsO3fbO5U2sM4vwRtiKfL0Q_' //add link genarate
    },

    {
      'name': '2015   COS3213 - Internet Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-Rde4H3a-Q8U5IGEVcCZ4AJTGZjFD65V' //add link genarate
    },

    {
      'name': '2015   COS3222 - Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1aLQD8gEL7AJj2l86hYgfqjpm3OM8M5dJ' //add link genarate
    },

    {
      'name':
          '2015   COS3231 - Practical for Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ctM0D1S89JGwG28dJYqiwjAxcynv_C7X' //add link genarate
    },

    {
      'name':
          '2015   PMA3213 - Algebraic Structures and Complex Variable', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1nKB2xpR2YZL71a2G08TLxoD3_ziUJ1-Q' //add link genarate
    },

    {
      'name':
          '2015   SCOS3213 - Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14YsQMpoRpQH41LLLNrd8T9oQ1GIt0yMU' //add link genarate
    },

    {
      'name':
          '2015   SCOS3232 - Practical for Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1sVc2RPmlcGwfZ19sedeZryjM178Q-Vvu' //add link genarate
    },

    //2016
    {
      'name': '2016   AMA3213 - Analytical Dynamics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Ji95eeEFQwTTPPWgCAgf6ztOW2Hjh6hW' //add link genarate
    },

    {
      'name': '2016   COS3213 - Internet Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Vd43QR2NtybcSXekF9TJGxEfm2uyoE5S' //add link genarate
    },

    {
      'name': '2016   COS3222 - Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1rYggVo_Mj4RUBZ0NlFzsIa8R--Ggb-SN' //add link genarate
    },

    {
      'name':
          '2016   PMA3213 - Algebraic Structures and Complex Variable', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QHpx--TCObJEP8epj8woXF-rPf4tKBun' //add link genarate
    },

    {
      'name':
          '2016   SCOS3213 - Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1q_y612oYc5c-rPjPmXiznkoiiWcrBcuY' //add link genarate
    },

    {
      'name': '2016   SCOS3223 - Parallel Computing', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13TTZRTEZzEhusuwzMUVhRRekva6OmDAa' //add link genarate
    },

    //2017
    {
      'name': '2017   COS3213 - Internet Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1bNqhfEbtNZqzJheEWoSCmGt8Pk1Di6Iv' //add link genarate
    },

    {
      'name': '2017   COS3222 - Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1iVRIZ3X10sqvh85W3vntff5wF30UreyN' //add link genarate
    },

    {
      'name':
          '2017   COS3231 - Practical for Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Od4guI736mE6Oyhd8hR-ONC-jPZ7T2QD' //add link genarate
    },

    {
      'name':
          '2017   SCOS3213 - Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1acmGhKMQsMH8t-b_Ug5QkSZDKZpTAOzi' //add link genarate
    },

    {
      'name': '2017   SCOS3223 - Parallel Computing', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1yIYhdmAgl87qXb0UkZAWFdTWYMl3yfwx' //add link genarate
    },

    {
      'name':
          '2017   SCOS3232 - Practical for Knowledge Based Systems and Logic Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1KzvndxKKRDieXkBZEfuvC6ociR81SfdK' //add link genarate
    },

    {
      'name':
          '2017   SCOS3241 - Practical for Parallel Computing', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15IZsJHF-g6zp8RBOCuj_Nv6biUjNf7Fl' //add link genarate
    },

    //2018
    {
      'name': '2018   AMA3213 - Analytical Dynamics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1yuuB00nm03EtLauhb4UjAcyXOtaAp7Zb' //add link genarate
    },

    {
      'name': '2018   COS3213 - Internet Programming', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1A2Vmo_xRaXaQCPO4g71DDEOkbkVpHvxv' //add link genarate
    },

    {
      'name': '2018   COS3222 - Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1x7v-HHqR1hskeSnu4boAw9AcGTtoGOcq' //add link genarate
    },

    {
      'name':
          '2018   COS3231 - Practical for Computer Systems', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1WCHWq3ifb5OXaJvR8PNkM-z-srO8r9w8' //add link genarate
    },

    {
      'name':
          '2018   PMA3213 - Algebraic Structures and Complex Variable', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1a3e7axF8o6_CRCQ7J-SzZAP_WAuxKzdP' //add link genarate
    },

    {
      'name': '2018   STA3213 - Applied Statistics', //add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=124QbNjkqMymNTwEbC-qY093Sku1PZykP' //add link genarate
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

    _items.add(_ItemHolder(name: 'Third Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

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
