import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp2dp2pbsc extends StatelessWidget {
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
  final _documents = [
    
	{
	//2.1 sem bs	
'name': '2015 ACC 2113 GÇô Cost and Management Accounting (Part I) ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1yAc5-HhVIjpSXJbzRg7n4-_mtJGxqvE5'
		},
		{
		
'name': '2015 ACC 2113 GÇô Cost and Management Accounting (Part II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1RJaoCP3DRMOSfh1OvrPtO-6ApiNenfZ4'
		},
		{
		
'name': '2015 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1WlSaljvVfs_MaGngZnLuOenT4Qpy39gx'
		},
		{
		
'name': '2015 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1dNIbRo1DMVbGU3YYQBw2TcMPY1_S3eVg'
		},
		{
		
'name': '2015 ACC 2214 GÇô Auditing and Taxation (Taxation - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1FaPpBuu8CVhor0b2Y8zmPRijtkSktHXq'
		},
		{
		
'name': '2015 MGT 2142 GÇô Business Communication GÇô I ' ,
'link':
        'https://drive.google.com/uc?export=download&id=18e8SVOvqVgBvxvLmF1uj9_857GkfTcrj'
		},
		{
		
'name': '2015 MGT 2223 GÇô Business Law' ,
'link':
        'https://drive.google.com/uc?export=download&id=1TL-zON7XLxHDXtN9Lr8DkQXJack4twXk'
		},
		{
'name': '2016 ACC 2113 GÇô Cost and Management Accounting (Part I) ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1sfLHWJDXo57p9fM_3cTxaV9cUMg2yWlc'
		},
		{
		
'name': '2016 ACC 2113 GÇô Cost and Management Accounting (Part II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1_CQ6DAXUoppeYEKrCiBxjQ-5l7YfTqUj'
		},
		{
		
'name': '2016 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1MMsMd19WjwgA7Vn8mWwZvfOW1pqjaJLh'
		},
		{
		
'name': '2016 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1pLySHc-jOoHmD4HEAeU-1QCbdLM1bQGr'
		},
		{
		
'name': '2016 ACC 2214 GÇô Auditing and Taxation (Taxation - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1ZzJT0z_XB8Mgepb-rXds2Cf9EkfaXGYR'
		},
		{
		
'name': '2016 ACC 2214 GÇô Auditing and Taxation (Taxation - Part-II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1b4PJq-CRgS1b_esNFiCPHKCXwIaUooyS'
		},
		
		{
'name': '2016 MGT 2223 GÇô Business Law' ,
'link':
        'https://drive.google.com/uc?export=download&id=1TZKrX_V09OsOpvaKd1kevJrk4-1eZdmO'
		},
		{

'name': '2017 ACC 2113 GÇô Cost and Management Accounting (Part I) ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1yp3UpXlNf_4BHmOjcDxdS07tM7coDtl7'
		},
		{
			
'name': '2017 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1k2BqGEcgUh45dclfE5eWR7YNOPrBQFmg'
		},
		{
		
'name': '2017 ACC 2214 GÇô Auditing and Taxation (Auditing - Part-II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1Wc3CacL3Wmd7i-hAZAfO6YDMopvWuzOT'
		},
		{
		
'name': '2017 ACC 2214 GÇô Auditing and Taxation (Taxation - Part-I)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1QZOxO2l2O3w6Kc9KdbUovVxzIJLZSm_s'
		},
		{
		
'name': '2017 ACC 2214 GÇô Auditing and Taxation (Taxation - Part-II)' ,
'link':
        'https://drive.google.com/uc?export=download&id=1jMsacPWg2jMwnLIBEnevAZ11dKCEvhGp'
		},
		{
			
'name': '2017 MGT 2223 GÇô Business Law' ,
'link':
        'https://drive.google.com/uc?export=download&id=1NxmnENgkQctBR7jm_OucR5PYJl7AphI_'
		},
		{

'name': '2017 ACU 2210 GÇô Basic Science for Non-Science Students ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1-zO3hUvPBFnzd3c_mKRtkwsNXgPkgYVr'
		},
		{

'name': '2017 MGT 2112. Business Communication' ,
'link':
        'https://drive.google.com/uc?export=download&id=1IH9d8lV_PL6bG0l6p6ccwmtloVqWAFWs'
		},
		{

'name': '2018 ACC 2113. Cost and Management Accounting (Old Syllabus) ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1nY1AgGM_cmSCqN7xLgcUq3Wnr0UGm5fG'
		},
		{
		
'name': '2018 ACC 2113. Cost and Management Accounting (Old Syllabus)(1) ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1IGFV26EZVoTfBmtg_WOizz9Rx6QnUiCC'
		},
		{
		
'name': '2018 ACC 2113. Cost and Management Accounting' ,
'link':
        'https://drive.google.com/uc?export=download&id=1RgI4JcQAOX6qBe_N3_HNqpu8dgQMt6ZW'
		},
		{
		
'name': '2018 ACC 2123. Taxation ' ,
'link':
        'https://drive.google.com/uc?export=download&id=13V_wCDvUXAELLOViFvamuivNN5d4DjuW'
		},
		{
'name': '2018 ACU 2111. Basic Science' ,
'link':
        'https://drive.google.com/uc?export=download&id=1zZ_hD8CWPKTKMsfOaxbRBH4upM2-dZ6z'
		},
		{
		
'name': '2018 ECOFIN 2113. Managerial Economics' ,
'link':
        'https://drive.google.com/uc?export=download&id=169D8sANUDmQFlHDwCbTGE_Fd9NwoVP7P'
		},
		{
		
'name': '2018 ECOFIN 2113. Managerial Economics' ,
'link':
        'https://drive.google.com/uc?export=download&id=169D8sANUDmQFlHDwCbTGE_Fd9NwoVP7P'
		},
		{
		
'name': '2018 ENG 2112. Business Communication ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1uD1nI8W1jrE3_OGPkhY3i0e7r5XO706Y'
		},
		{
		
'name': '2018 MGT 2113. Business Law' ,
'link':
        'https://drive.google.com/uc?export=download&id=1yQtSlojK9ov5KRxWdwZphjuDI9ozhgio'
		},
		{
		
'name': '2018 MGT 2122. Organizational Behavior ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1zHGodDCxwfv5uNrsjtBBFmkVfs0AwEmV'
		},
		{
'name': '2018 MGT 2142. Business Communication' ,
'link':
        'https://drive.google.com/uc?export=download&id=1nVNQm4eMLaozZN5GQH7NIzF1s0zLGxu4'
		},
		{
		
'name': '2018 MGT 2223. Business Law' ,
'link':
        'https://drive.google.com/uc?export=download&id=132t00HeTm22wHwcYY_6xROjjjoBOkccn'
		},
	
  ];

  final _images = [
    //2.2 sem bs
	{
    'name': '2015 ECO 2213 GÇô Money and Banking' ,
'link':
        'https://drive.google.com/uc?export=download&id=1xOceM0hZ6Iv3-3ICrvi-Qr5oXODlYdcz'
		},
		{
		
'name': '2015 ENG 2210 GÇô Proficiency in English IV' ,
'link':
        'https://drive.google.com/uc?export=download&id=1ARaOUJHZS2bo3JKJttRlTMJKgHKqJPUE'
		},
		{
		
'name': '2015 MGT 2222 GÇô Business Communication II ' ,
'link':
        'https://drive.google.com/uc?export=download&id=14ekDjUomUR-Igfn2Gm4LxfyoX32uHU4l'
		},
		{
		
'name': '2016 ACU 2110. Social Harmony008' ,
'link':
        'https://drive.google.com/uc?export=download&id=1JjqqJhmzAnbaPt4doV-bHIAJdUIlL-MJ'
		},
		{
		
'name': '2016 MGT 2132. Logistic and Supply Chain Management006' ,
'link':
        'https://drive.google.com/uc?export=download&id=1AiSf4FZRNah519y_qPudYJeP0T2XuKog'
		},
		{
		
'name': '2016 MGT 2142. English for Business Communications - I007' ,
'link':
        'https://drive.google.com/uc?export=download&id=1VhVwdpWtlRPfjl661Qxo_Q6BvZ-mSpak'
		},
		{
		
'name': '2016 MGT 2222. Business Communication' ,
'link':
        'https://drive.google.com/uc?export=download&id=1x9jBOkl7kcGBVwvEPdtf4Pb3keJSwVqq'
		},
		{
		
'name': '2017 ACU 2110. Social Harmony ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1yo6BCX_JXJEOstczyj7yeQxin30TyQ-L'
		},
		{
		
'name': '2017 MGT 2132. Logistic and Supply Chain Management ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1l6XaZ0BYNePfVwW2iPs71Br04UuGnOvv'
		},
		{
		
'name': '2017 MGT 2222 GÇô Business Communication ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1CRJeV3dh4g-cGSkpNH8z0ViAyCCxGyv5'
		},
		{
		
'name': '2018 ACC 2213. Advanced Financial Accounting ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1WHKmo0VYaDSKb_HBLKK0e1fDrZaEowN0'
		},
		{
		
'name': '2018 ACC 2214. Auditing and Taxation - Auditing part II ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1UaxrgFDGEuJOa1HIm5IyGnu2kTOGw5Sn'
		},
		{
		
'name': '2018 ACC 2214. Auditing and Taxation - Taxation - Part I ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1HjA21DCOag-SX_MBRDt9TFABIS1ihKd4'
		},
		{
		
'name': '2018 ACC 2223. Corporate Governance - Part I ' ,
'link':
        'https://drive.google.com/file/d/16b_Vk2r7qWIGV9ZyTJ06-yRsiKcJMrUJ/view?usp=sharing'
		},
		{
		
'name': '2018 ACC 2223. Corporate Governance - Part II ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1CvDJcJdCufjWdCXMx96exyz3Teq_2_cp'
		},
		{
		
'name': '2018 ACU 2212. Social Harmony and Active Citizenship ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1_APNNb3pPIdoRmpjVCIQ_2fyFMEN4rUR'
		},
		{
		
'name': '2018 ENG 2212. Business Communication II ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1lwKfte7RLPHOlZo5TwuGZJ0zPUKgAYnU'
		},
		{
		
'name': '2018 FIN 2213. Financial Management - part I  ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1LONR5AdGK_e6j7EAQeHCXhl86oAsqwqW'
		},
		{
		
'name': '2018 FIN 2213. Financial Management - part II ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1XLwZ6lyovjdOXSqykAG2Kv8O4yYgl9cV'
		},
		{
		
'name': '2018 MGT 2132. Logistic and Supply Chain Management ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1IuTS36zO0ehRL7OlfJjDKblFIhPUb-We'
		},
		{
		
'name': '2018 MGT 2213. Operations Research ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1-xML7wOCpYs4lCsKhpzQcgxaNtAi7ITN'
		},
		{
		
'name': '2018 MGT 2222.  Business Communication ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1mV_HEhc3dOOpJlC5HpbWaFKM_nce7Ifo'
		},
		{
		
'name': '2018 MGT 2222.  Logistic and Supply Chain Management ' ,
'link':
        'https://drive.google.com/uc?export=download&id=1TQF7jbD2hT86ggH3YkGYJK9ORhvwl9D9'
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

    _items.add(_ItemHolder(name: 'Second Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_images
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
