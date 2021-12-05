import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';


import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp2dp1p extends StatelessWidget {
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
        title: 'Second year',
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
     //'Second Year frist Semester'
     //2014
    {
      
      'name': '2014   AMA2113 - Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1pYbf-GzdqzAc2SFg3qOalaAmUUUMcJWd'//add link genarate
    },
      
      {
      
      'name': '2014   AMA2123 - Vector Calculus and Field Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1laTQcb4mJ9WymukJjx0SidEWxLLr0Gf8'//add link genarate
    },

    {
      
      'name': '2014   COS2112 - Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15VUTy52hJrN_MEwdrOtmg5-6wFIs8XCD'//add link genarate
    },

    {
      
      'name': '2014   COS2121 - Practical for Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1wvhNF5usFxIqR2-kHqXIhN3ZuZOqOKzy'//add link genarate
    },

    {
      
      'name': '2014   PMA2112 - Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1jOoZZ2OFT4UuFwDgJcqPUnQkP5tgEUml'//add link genarate
    },

    {
      
      'name': '2014   PMA2121 - Practical for Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1RH0HzxEWVGwmVRGTfRH-EC6-HoP2Ll6-'//add link genarate
    },




    //2015
    {
      
      'name': '2015   AMA2113 -  Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1xurmFzmAYnKRoReKaSwSQSS-VoFpa064'//add link genarate
    },

    {
      
      'name': '2015   AMA2123 -  Vector Calculus and Field Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1SyKp9QYWgV7Or0sJvx9238nWeJbPJtZC'//add link genarate
    },

    {
      
      'name': '2015   COS2112 - Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1IS05e0nb78YqopQfZBwclRKc5WQ4Y37W'//add link genarate
    },

    {
      
      'name': '2015   COS2121 - Practical for Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1FZ3k96H39zJDWDREy_CiwUB2xp-dGkqK'//add link genarate
    },

    {
      
      'name': '2015   PMA2112 - Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QNu561nKev4ykY8MguFnits1P42pW5ow'//add link genarate
    },

    {
      
      'name': '2015   PMA2121 - Practical for Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=114jSVBkrCpzmIskW_-LsYNiQ4cVjI0rK'//add link genarate
    },




    //2016
    {
      
      'name': '2016   AMA2113 - Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=17P3gRXq9fkwowqQv-3YPmeBHqzMGTW4W'//add link genarate
    },

    {
      
      'name': '2016   AMA2123 - Vector Calculus and Field Theory',//add your paper name
      'link':
          'https://drive.google.com/file/d/1fzsK6QQC9zQkG3rLHEY0BoqJ-kTZCQSv/view?usp=sharing'//add link genarate
    },

{
      
      'name': '2016   COS2112 - Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1fkmKrXSXo7mFbTz5YfGdQmrToMc_a-m1'//add link genarate
    },

    {
      
      'name': '2016   COS2121 - Practical for Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=18BP-SYEzL6SND1qm-Gmi8nFpmxijtbpf'//add link genarate
    },

{
      
      'name': '2016   PMA2112 - Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1M5snAwpdBpXXGy2LK2ioXa-PJUvM6qlC'//add link genarate
    },

{
      
      'name': '2016   PMA2121 - Practical for Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1u2nCSb_ipvGCvkrrLnJFVPKNkZdsNika'//add link genarate
    },




    //2017
    {
      
      'name': '2017   AMA2113 - Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1JJJSjpNcWetwgzpcIJOX2h8v38CHhCj5'//add link genarate
    },

    {
      
      'name': '2017   AMA2123 - Vector Calculus and Field Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=12iPgXZyl5n3tepJMUhI2SNHOVKGh8DPK'//add link genarate
    },

    {
      
      'name': '2017   COS2112 - Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=10lQMkTUyH2kkk-i2a1dECE6Xygkw5nx9'//add link genarate
    },

    {
      
      'name': '2017   COS2121 - Practical for Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1FAdja5DMw6y-RDZH0aXMWsY8EA4MSWx5'//add link genarate
    },

    {
      
      'name': '2017   PMA2112 - Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1mbn0AZ0nKl-PzKBi5dxKDePEUsPROcfw'//add link genarate
    },

    {
      
      'name': '2017   PMA2121 - Practical for Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14kWdyz6KXQ2nL6vX0z1pRdSMBJA_ogSY'//add link genarate
    },




    //2018
    {
      
      'name': '2018   AMA2113 - Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1WkPypfKsjJWRnLPCVTpXSLDiubPxycvi'//add link genarate
    },

    {
      
      'name': '2018   AMA2123 - Vector Calculus and Field Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1gWg5QGALiYyVFnPOCfRA09B6_PrkY8Rz'//add link genarate
    },

    {
      
      'name': '2018   COS2112 - Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1RTBi0DW9wXMs1D_AbnxfV02NUJx3q1yF'//add link genarate
    },

    {
      
      'name': '2018   COS2121 - Practical for Data Structures and Algorithms',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1VzkoKux1Rae5eyly1fyyDVwKwojVSUL9'//add link genarate
    },

    {
      
      'name': '2018   PMA2112 - Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Oe2-tlhYtj2ULt1qOaS-SPBRTqaW557p'//add link genarate
    },

    {
      
      'name': '2018   PMA2121 - Practical for Linear Algebra with Applications',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=16E7D4B4E0f3qAxQNmIZi7cACreItboIA'//add link genarate
    },
  ];

  final _second = [
    //'Second Year Second Semester'
    //2014
     {
      
      'name': '2014   AMA2223 - Elementary Fluid Dynamics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1CNOxdji1gGQ0shsaBQB7GP1-9twNTaVX'//add link genarate
    },

    {
      
      'name': '2014   AMA2231 - Practical for Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1haWXyEVfMJKUIm-G3mh9hO3SYygUVY4_'//add link genarate
    },

    {
      
      'name': '2014   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=10e9F5Wph_JM1WTfgQZOA-gYDzE5W0FmN'//add link genarate
    },

    {
      
      'name': '2014   COS2222 - Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15_kHLG1QjWn2_ZNR6q3KCWRD5fnGf93y'//add link genarate
    },

    {
      
      'name': '2014   COS2231 - Practical for Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1TxlmjALb192vFU0pnGdC1MpfQvxGx2nG'//add link genarate
    },

    {
      
      'name': '2014   COS2241 - Practical for Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1jjpxe_rF2WpLL5aY7AZElPp1FHbeTUZZ'//add link genarate
    },

    {
      
      'name': '2014   STA2212 - Design of Experiments',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=18UH68oNGcROd0z-fpphjsJAjJjOUu6HW'//add link genarate
    },

    {
      
      'name': '2014   STA2221 - Practical in Statistical Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1yhtorEp7W7K1uOm7V5WtNh0oCmPczMJk'//add link genarate
    },




    //2015
      {
      
      'name': '2015   AMA2212 - Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1dKSJbouDnmRFzrMAU_2LRUEckLAjwWNt'//add link genarate
    },

    {
      
      'name': '2015   AMA2223 - Elementary Fluid Dynamics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=16rde_8pNn0JxUhEb-mHmQsC5bn0hR81Q'//add link genarate
    },

    {
      
      'name': '2015   AMA2231 - Practical for Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Roa7Ycd-m7UkPaiqr4BhteZ3CBYwRuD9'//add link genarate
    },

    {
      
      'name': '2015   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1sI10ZYNaq6uFe66TtPNW5Sql3S_8JxlO'//add link genarate
    },

    {
      
      'name': '2015   COS2222 - Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13ndFCJ_i1oxPDX70S6jqb-MKRTkxnueU'//add link genarate
    },

    {
      
      'name': '2015   COS2231 - Practical for Database System',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1TH_1XBX8UItmrMmswFfh09GxO0PnhpXQ'//add link genarate
    },

    {
      
      'name': '2015   COS2241 - Practical for Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1_ajyfxqOq9vhLqiEod74YSOavEuJpUlt'//add link genarate
    },

    {
      
      'name': '2015   STA2212 - Design of Experiments',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1uRFpuAaUUX4gJ6SPk87z2hF0Bia5wAw4'//add link genarate
    },

    {
      
      'name': '2015   STA2221 - Practical in Statistical Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1aDJpg3Ggel6xu57R7mxhLcF980Ku3d1z'//add link genarate
    },




    //2016
     {
      
      'name': '2016   AMA2212 - Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QKe0Fk-cuYLizmS2jtSI7BPKtss7L_BP'//add link genarate
    },

    {
      
      'name': '2016   AMA2223 - Elementary Fluid Dynamics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1PI_jQc2Rz5QEaAVzbIMNfqcr4WkvUnvb'//add link genarate
    },

    {
      
      'name': '2016   AMA2231 - Practical for Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Vwzo3JZOVmgRT7HmxUUrGDb6nnalvQXl'//add link genarate
    },

    {
      
      'name': '2016   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=17xO_pDNcTTBMhe1-J_DGwlFLbdxhJJ3V'//add link genarate
    },

    {
      
      'name': '2016   COS2231 - Practical for Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1fZ7SPDOT8sGT62U8jA8Bm1rhiBLfRRss'//add link genarate
    },

    {
      
      'name': '2016   COS2241 - Practical for Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1If3thtBAh4mr97c3D-1pNtGEbAK832MH'//add link genarate
    },

    {
      
      'name': '2016   STA2212 - Design of Experiments',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1H1n9ckBdAWrmaavMSqouFvwdQZJzOASr'//add link genarate
    },

    {
      
      'name': '2016   STA2221 - Practical in Statistical Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1MWdmqktlT4jqLfPCeLGgBDdv8O-clnjH'//add link genarate
    },




    //2017
     {
      
      'name': '2017   AMA2212 - Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1f4yNgBmrr4qtoV1TLLFhTYJGysBYhN34'//add link genarate
    },

    {
      
      'name': 'AMA2223 - Elementary Fluid Dynamics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1uezjaJzKDBoMdt56a5tHwmcq_1PZCeVQ'//add link genarate
    },

    {
      
      'name': '2017   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1uezjaJzKDBoMdt56a5tHwmcq_1PZCeVQ'//add link genarate
    },

    {
      
      'name': '2017   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1sLkcfnmnl6OyVNNLF1sJUHqyUUzc2KA7'//add link genarate
    },

    {
      
      'name': '2017   COS2222 - Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1tQ725tj-__UYOKIUg-MQMQRy-JgnGVjm'//add link genarate
    },

     {
      
      'name': '2017   COS2231 - Practical for Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1I8tP7RZ9KBL4ZAOzmnNYwnsybdIdLNeK'//add link genarate
    },

     {
      
      'name': '2017   COS2241 - Practical for Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1DvN_zCNu6zscumQSj70eGnI-Jnvb-BvV'//add link genarate
    },





    //2018
    {
      
      'name': '2018   AMA2212 - Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ID0OkDX89xqU3gi7-ypCglyCIkuNbyJW'//add link genarate
    },

    {
      
      'name': '2018   AMA2223 - Elementary Fluid Dynamics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1uEW4EcMeltinxXq3UfeOAiouJQr4YK7I'//add link genarate
    },

    {
      
      'name': '2018   AMA2231 - Practical for Fundamentals of Optimization',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QvvU52vELTTr7DsRe1zRfnjSzpjloSYn'//add link genarate
    },

    {
      
      'name': '2018   COS2212 - Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1rhOQ1bLeEKeJmPT_jGqPrWdIrl5JY0zW'//add link genarate
    },

    {
      
      'name': '2018   COS2222 - Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1iCrXqCTeYGusFblqygRWCkFREvMRPJ_8'//add link genarate
    },

    {
      
      'name': '2018   COS2231 - Practical for Database Systems',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1r5eWhNi4iyCnRSSNBOg7wvJ4sZc5_sgm'//add link genarate
    },

    {
      
      'name': '2018   COS2241 - Practical for Numerical Computing II',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1FRSo4oK9FnZJEwvJODeLx1Bf7rSX2KZg'//add link genarate
    },

    {
      
      'name': '2018   STA2212 - Design of Experiments',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1xpyL6qKJDcMZSiWNhMq5M5Tn4WmucDpC'//add link genarate
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

    _items.add(_ItemHolder(name: 'Second Year Frist Semester'));
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
