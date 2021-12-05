import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp1dp1p extends StatelessWidget {
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
 final _frist = [
     //'Frist Year frist Semester'
     //2014
    {
      
      'name': '2014 AMA1113 - Differential Equations ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ky5TdKhja1Qvnot_a_MmYYXY9yPuEo2y'//add link genarate
    },
      {
      
      'name': '2014  COS1112 – Fundamental Concepts in Information Technology',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1iUbYEi1Pd1kY3BGw83_U9EZgaXiEImu5'//add link genarate
    },
      {
      
      'name': '2014  COS1122 –  Practical for Fundamental Concepts in Information Technology',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QwmKCV2KHxNx5ZzCZ042DYRDBMA'//add link genarate
    },

    {
      
      'name': '2014  COS1132 –  Introduction to Programming Using  C++',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1t8Ou0SZPaHF3P8r8R_-KelWBsULMffj3'//add link genarate
    },

    {
      
      'name': '2014  COS1141 - Practical for Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1_lfRV5S1aJ95XwtKaOfjcmcwmKLSkt3c'//add link genarate
    },

    {
      
      'name': '2014  PMA1113 - Foundation of Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14AIfPe7JNLIAKSznXz7Nqh1p8WwK8r7o'//add link genarate
    },

    {
      
      'name': '2014   STA1113 - Statistical Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1RgEJ80xGs04Ddoxi0L3t2AYtca7tRkpU'//add link genarate
    },



    //2015
    {
      
      'name': ' 2015  ACU1110 - English Language ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1aIu92WCHf4KBm_uFlv-OuWL_-lxNBA6K'//add link genarate
    },

    
      
   
    {
      
      'name': ' 2015  COS1122 - Practical for Fundamental Concepts in Information Technology',//add your paper name
      'link':
          'https://drive.google.com/file/d/1ZChP5v8dEv8GfruT_lgQs8WqlTc8cIhf/view?usp=sharing'//add link genarate
    },

    {
      
      'name': ' 2015  COS1132 - Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1PDih8S6GQL54q1JInBGKvvJuTO0gIE06'//add link genarate
    },

    {
      
      'name': ' 2015  COS1141 - Practical for Introduction to Programming using C++ (1) ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1vvrah8CVkrBT62UzeOlvELUdXJ8rk4Ek'//add link genarate
    },

    {
      
      'name': ' 2015  PMA1113 - Foundation of Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1X68t6jEkmRNs73wBqjGW_233ZVvu1lJm'//add link genarate
    },

    {
      
      'name': ' 9.	2015  STA1113 - Statistical Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ut-Bra2q7SE0C-cecpR2otcKKGv4N8Ja'//add link genarate
    },



    //2016
    {
      
      'name': ' 2016   ACU1120 - General Biology',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1c4qiP92pCmsixWRF-wPJXsNh3h2oKcxp'//add link genarate
    },

    {
      
      'name': ' 2016  AMA1113 - Differential Equations ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1_KTPMhTMRVHJ1nUKX8R_x37KAlEeKHGi'//add link genarate
    },

    {
      
      'name': ' 2016  COS1112 - Fundamental Concepts in Information Technology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1x0qxUSVoqgev5DYtmlVdgX1SawzVojOg'//add link genarate
    },

    {
      
      'name': ' 2016  COS1122 - Practical for Fundamental Concepts in Information Technology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1GaZxduGp9DSEzH0w7MxxPjcaoXgAEMNv'//add link genarate
    },

    {
      
      'name': ' 2016  COS1132 - Introduction to Programming using C++ (1) ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1YCt8zTDo8rbJtjF0WrX0iLHdJVbY2xl7'//add link genarate
    },

    {
      
      'name': ' 2016  COS1141 - Practical for Introduction to Programming using C++ ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1c6fyZ9h-CDZky8iQmANhEovec82ezmlI'//add link genarate
    },

    {
      
      'name': ' 2016  STA1113 - Statistical Theory ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13jmtRxEkcnoNHej-oOQO_UcrFta4KzcZ'//add link genarate
    },

    



    //2017
    {
      
      'name': ' 2017   ACU1110 - English Language ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-bv_nq88ug7wKVGdDBpidGRYjDZDE2iY'//add link genarate
    },

    {
      
      'name': ' 2017   ACU1120 - General Biology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ppte0iPMZlEKC9td5SmYIARnBs8Qi4hs'//add link genarate
    },

    {
      
      'name': ' 2017   AMA1113 - Differential Equations',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15VvLXKN7vGNTHdbAUL4gden4Z596fdcv'//add link genarate
    },

    {
      
      'name': ' 2017   COS1112 - Fundamental Concepts in Information Technology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1fWUGlHxDOS3tQMOa90YBVdGwo0g5Enz7'//add link genarate
    },

    {
      
      'name': ' 2017   COS1122 - Practical for Fundamental Concepts in Information Technology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1nfq5VvXoZ1NgGOD1SlRXy77MyIAG80rQ'//add link genarate
    },

    {
      
      'name': ' 2017   COS1132 - Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/file/d/19I1ct4bkYpl-hCH5hBVwRYBmOgBwa_kp/view?usp=sharing'//add link genarate
    },

    {
      
      'name': ' 2017   COS1141 - Practical for Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15-xmj1mqKzd_1jKtTd4qOZYrisTf7FS9'//add link genarate
    },

    {
      
      'name': ' 2017   PMA1113 - Foundation of Mathematics (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1igz3Lo1FLc2TQbhpvpHO4Ck1Pr-Qfhll'//add link genarate
    },

    {
      
      'name': ' 2017   PMA1113 - Foundation of Mathematics ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1hRFPF1D3_L2GYT_GMW5hHhUzRd70hMST'//add link genarate
    },

    {
      
      'name': ' 2017   STA1113 - Statistical Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1xiCkAyUD_GnVhwd3r3v-CJB6z3ThnTTs'//add link genarate
    },
      


    //2018
    {
      
      'name': ' 2018   ACU1120 - General Biology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1F4ATfaNa5XQf7_oB2M6Z0J1OyAPlsQZj'//add link genarate
    },

    {
      
      'name': ' 2018   AMA1113 - Differential Equations (Old Syllabus) (1) ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1g-r6eO4cdaz1ANSsOJnQ4dqO7v1VclAx'//add link genarate
    },

    {
      
      'name': ' 2018   AMA1113 - Differential Equations',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1YJ7gvJ1MRDQzTyqbvBCX9enB65S8lKBK'//add link genarate
    },

    {
      
      'name': ' 2018   COS1112 - Fundamental Concepts in Information Technology',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1YJ7gvJ1MRDQzTyqbvBCX9enB65S8lKBK'//add link genarate
    },

    {
      
      'name': ' 2018   COS1122 - Practical for Fundamental Concepts in Information Technology ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1LVGlNc34rPDEXo4Z096XJg9HDTWUHwPX'//add link genarate
    },

    {
      
      'name': ' 2018   COS1132 - Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1-YnaYNKMA_1YyNrA5cb_FV6d53-dKsBQ'//add link genarate
    },

    {
      
      'name': ' 2018   COS1141 - Practical for Introduction to Programming using C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1hxWtyvH0m32sI0HskpjusHw3LAKZlk1S'//add link genarate
    },

    {
      
      'name': ' 2018   CSC1113 - Foundation of Computer Science – Practical ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1TYrSwf-BzswALBhfrmyGc6NQ8QRSlvnn'//add link genarate
    },

    {
      
      'name': ' 2018   CSC1113 - Foundation of Computer Science – Practical',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1IbVB2YRDvGjrjMQnjoPsdNXK0AR_1cP0'//add link genarate
    },

    {
      
      'name': ' 2018   CSC1123 - Introduction to Programming  - Practical',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1zwVQP3Ev0s3gczK2tdhKiUwC0Jk8nt2P'//add link genarate
    },

   
  ];

  final _second = [
    //'Frist Year Second Semester'
    //2014
     {
      
      'name': '2014   ACU1210 - Communication Skills',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=16yfemghjjDuUZTO3JRIbXHbx_DclkLbW'//add link genarate
    },
      {
      
      'name': '2014   ACU1220 - Sri Lankan Studies Social Harmony and Natural Resource of Sri Lanka',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1S6NZejalW9p8PpZu71vWkjxXunCUy7PD'//add link genarate
    },

    {
      
      'name': '2014   AMA1213 – Mechanics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1SkL4r2dSj1CkyFp8ANH7FlopKnkL95Ze'//add link genarate
    },
      {
      
      'name': '2014   COS1212 - Numerical Computing – I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=17j4ff9z5ARnW3XjI2_vM6-kwiiFH2ZUC'//add link genarate
    },

    {
      
      'name': '2014   COS1221 - Practical for Numerical Computing I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1SgTJ5_KXLnCZjX13KYyN-Bq-3o7RSIz1'//add link genarate
    },
      {
      
      'name': '2014   COS1233 - Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1FUgfotRhyCFj61t5pNXAm6EkES4a6Vg9'//add link genarate
    },

    {
      
      'name': '2014   COS1242 - Practical for Advanced Programming using Java and C++',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1id-01YD6H_JHMKOSk8D5XflLEaBMbhZt'//add link genarate
    },
      {
      
      'name': '2014   PMA1113 - Foundation of Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=11TeGy78n0hgw8bqvA03gQbiW1kZ43e2M'//add link genarate
    },

    {
      
      'name': '2014   PMA 1213. Analysis and Number Theory',//add your paper name
      'link':
          'https://drive.google.com/file/d/1Td4wo4i_zCfRw3-shLgubLuG1GZvkI89/view?usp=sharing'//add link genarate
    },
      



    //2015
     {
      
      'name': '2015   AMA1213 – Mechanics ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1K_QbbMXnoflHHF4wLo2wPO1RAGK7eEMN'//add link genarate
    },
      {
      
      'name': '2015   COS1212 - Numerical Computing – I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1VvJAZ-RFM7QYOEzA4F7zOd6rdH37bTpE'//add link genarate
    },

    {
      
      'name': '2015   COS1221 - Practical for Numerical Computing – I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=13Da0D9H_e6-tPbwFenIySJTJyJi4hoGF'//add link genarate
    },
      {
      
      'name': '2015   COS1233 - Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/file/d/1ttPFPYJIdo9snmVSJ0aq2YVOTmk0gC6I/view?usp=sharing'//add link genarate
    },

    {
      
      'name': '2015   COS1242 - Practical for Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Tc2YSIrJEbuxS7MsRo5abAD3cL63vJx8'//add link genarate
   
    },



    //2016
     {
      
      'name': '2016   ACU1210 - Communication Skills',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1_sMrj3NzClAoKjUf1k1Xg37rOQxkvuXo'//add link genarate
    },
      {
      
      'name': '2016   AMA1213 - Mechanics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1PiqUVrHb_vZZGh68NOIJw0Gcqy3R-37F'//add link genarate
    },

    {
      
      'name': '2016   COS1212 - Numerical Computing ',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Cim7Z1San-aT3ZpXGJ3zQ-06KvayQm6p'//add link genarate
    },
      {
      
      'name': '2016   COS1233 - Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1A79rQWm1KiYYTQIDwylfdcoiVMrsdIZB'//add link genarate
    },

    {
      
      'name': '2016   COS1242 - Practical for Advanced Programming using Java and C+',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1ttJkDwPUL-gOJs2LjFEMcNjykCbtQsWp'//add link genarate
    },
      {
      
      'name': '2016   PMA1213 - Analysis and Number Theory (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1J7MxvUS21qIssx62gXSaKM7GA5OGzF9R'//add link genarate
    },



    //2017
     {
      
      'name': '2017   ACU1220 - Sri Lankan Studies Social Harmony and Natural Resource of Sri Lanka',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14KYjfXXaIPGOAsGz7vgzEHOdUfFnMrnI'//add link genarate
    },
      {
      
      'name': '2017   AMA1213 - Mechanics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1VB5boN8w2wiQFmb6Im3WEddaZ7s4X7Bm'//add link genarate
    },

    {
      
      'name': '2017   COS1212 - Numerical Computing I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1NQZq6QLvC2-6HTB0BOM9DUyYuDvYfTRw'//add link genarate
    },
      {
      
      'name': '2017   COS1221 - Practical for Numerical Computing I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=16JE9ppMazoQdsb21ws6UULL9mKfgvzw8'//add link genarate
    },

    {
      
      'name': '2017   COS1233 - Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1oHZ7_L2HY0npnSdH9FzUqMBzJGmiZeXg'//add link genarate
    },
      {
      
      'name': '2017   COS1242 - Practical for Advanced Programming using Java and C++ (1)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1uoXhrY9L8C9VlQvqtsC10r-YOjTbRMbG'//add link genarate
    },

    {
      
      'name': '2017   PMA1213 - Analysis and Number Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=15D1d2FHmIOUnssgb3GcOVEltXSQg2kvb'//add link genarate
    },



    //2018
     {
      
      'name': '2018   ACU1210 - Communication Skills',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1VpvDUHvq7xe3zMwNK8zvrvjIbdC4xY_l'//add link genarate
    },
      {
      
      'name': '2018   AMA1213 - Mechanics (Old Syllabus)',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=14esY5CjPO5aXDeY1CB5bePmXgarCwOUc'//add link genarate
    },

    {
      
      'name': '2018   AMA1213 - Methods of Applied Mathematics',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1MtN2FRvaUzUoBTuTxJjRaEacQAqUVvys'//add link genarate
    },
      {
      
      'name': '2018   COS1212 - Numerical Computing – I',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=150NEC8I9stAiY-NpONjETWiLOFdPRWgP'//add link genarate
    },

    {
      
      'name': '2018   COS1221 - Practical for Numerical Computing – 1',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1Y7IveKt32oXo1v0Py3YgACB_RdjaYYjV'//add link genarate
    },
      {
      
      'name': '2018   COS1233 - Advanced Programming using Java and C++',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1RBWTWsCc120eLnmVwkmu2eSvDQqmxONN'//add link genarate
    },

    {
      
      'name': '2018   COS1242 - Practical for Advanced Programming using Java and C++',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1KInkXIzNL8PSVgczobTMmT-da7wdNY3n'//add link genarate
    },
      {
      
      'name': '2018   CSC1213 - Object Oriented Programming – Practical',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1WLvZGLeZnlyrlo08oYK8UxIfDxCfGiag'//add link genarate
    },

    {
      
      'name': '2018   CSC1223 - Database Systems',//add your paper name
      'link':
          'https://drive.google.com/file/d/1bh2STddoofF0JcxVavLW5xYxIu56smd6/view?usp=sharing'//add link genarate
    },
      {
      
      'name': '2018   PMA1213 - Analysis and Number Theory',//add your paper name
      'link':
          'https://drive.google.com/uc?export=download&id=1QpBYHDX_xnBXauU_9ub_rSkAOyuzVWuO'//add link genarate
    },

    {
      
      'name': '2018   STA1213 - Inferential Statistics',//add your paper name
      'link':
          'https://drive.google.com/file/d/1bnnVYyMPEBFlNbFttfZ7kk3UFbCxmZ9C/view?usp=sharing'//add link genarate
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

    _items.add(_ItemHolder(name: 'Frist year Second semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_second
        .map((image) => _TaskInfo(name: image['name'], link: image['link'])));

    _items.add(_ItemHolder(name: 'Frist Year Second Semester'));
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
