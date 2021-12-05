import 'dart:isolate';
import 'dart:ui';
import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp3dp2pbsc extends StatelessWidget {
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
        title: 'Third Year ',
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
    //3.1 sem bs
    {
      'name': '2015 ACC 3113. Advanced Financial accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1xJ3b7AEhfZtN0mr2YALTIeR101wwm-pJ'
    },
    {
      'name': '2015 ACC 3123. International Accounting  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1pvQ0Zwzyq6XNATH6TO2GGVPD7misBk0V'
    },
    {
      'name': '2015 ACC 3133. Advanced Auditing - Part II  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1dxVbk5wYVKg7IKAkKElTqdZ4hUl0I7gb'
    },
    {
      'name': '2015 ACC 3133. Advanced Auditing ',
      'link':
          'https://drive.google.com/file/d/1wcTLcQLD6c_P-cTFvmtuYEdpBfrQ0gEL/view?usp=sharing'
    },
    {
      'name': '2015 ECO 3133. Public Finance in Open Economy ',
      'link':
          'https://drive.google.com/uc?export=download&id=14Mm7vmOTa41hViv7Ce-m7yADFblunpMq'
    },
    {
      'name': '2015 FIN 3133. Financial Management - Part II ',
      'link':
          'https://drive.google.com/uc?export=download&id=1aIkFYjNrZ9eisyEj6c4SMjyJ-O1gR9_w'
    },
    {
      'name': '2015 FIN 3133. Financial Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1SlHKY3E25So6XsDti0svZEUI9ArcN8ZR'
    },
    {
      'name': '2015 FIN 3223. International Financial Management- Part II ',
      'link':
          'https://drive.google.com/uc?export=download&id=1vhJv-jfyuhU7WZP4fdzKlme6doUiZ5h4'
    },
    {
      'name': '2015 FIN 3223. International Financial Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1Vk8weFrrRlmbBnG5LOPT6zyXzxj31DJM'
    },
    {
      'name': '2015 HRM 3113. Human Resource Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1ibbNicQTJ2TexKgcZDN6YMod8fNwmbCq'
    },
    {
      'name': '2015 HRM 3123. Performance Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1s4pXK5nU97tCxUCNScbBJ334Yxs26dIX'
    },
    {
      'name': '2015 HRM 3143. Employment Laws  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1DNSwy52tvxKH-f3N8-Rl2SERwKeNLpYc'
    },
    {
      'name': '2015 MAR 3113. Consumer Behavior ',
      'link':
          'https://drive.google.com/uc?export=download&id=1IU9yze2-38Da6nw8e0UfRDDqgAnXS03i'
    },
    {
      'name': '2015 MGT 3113. Operations Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1d26nYCXUzg4UFc1q9pFM-rN4-2axxdyF'
    },
    {
      'name': '2015 MGT 3123. Enterpreneurship and small Business Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=13YslIbyx6aivR-NV4RqrY3MP9DuH1g9b'
    },
    {
      'name': '2016 ACC 3113. Advanced Financial Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1Df_rCrBsaLT_QhudXnnK9K7Rau-j8xHS'
    },
    {
      'name': '2016 ACC 3123. Financial Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1xuxtkwni_NxrxX-oovsni9O0rX6cgEL-'
    },
    {
      'name': '2016 ACC 3123. International Accounting  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1LGVBX4vPG6wtdc_a_7iQKJ_4d7DyEMSy'
    },
    {
      'name': '2016 ACC 3133. Advanced Auditing - II ',
      'link':
          'https://drive.google.com/file/d/1N82DMmO6XfuXpka6KH8UyPHfTXSTm4JF/view?usp=sharing'
    },
    {
      'name': '2016 ACC 3133. Advanced Auditing  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1zbQb9m8gynkVw5sGgqT2jevMhSjjOtP0'
    },
    {
      'name': '2016 FIN 3123. Managing the Financial Institutions ',
      'link':
          'https://drive.google.com/uc?export=download&id=1sr_jB20DfSOttE0Mg09D7hJjj8tvxhsG'
    },
    {
      'name': '2016 FIN 3133. Financial Management - Part I ',
      'link':
          'https://drive.google.com/uc?export=download&id=1vXJNWY7UCqlVbQXIE-q7vl__PICt3o0V'
    },
    {
      'name': '2016 FIN 3133. Financial Management - Part II',
      'link':
          'https://drive.google.com/uc?export=download&id=1jTCXVgs15BNixPwvBtAH3oKBLr554rHB'
    },
    {
      'name': '2016 HRM 3113. Human Resource Accounting  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1nDf0IF1x__prb5M65m0eiQFcL9Ga0EWm'
    },
    {
      'name': '2016 HRM 3123. Performance Management  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1GW6UTeg6MdWBoX8V14-JdSmqS8RRC1eL'
    },
    {
      'name': '2016 HRM 3143. Employment Law ',
      'link':
          'https://drive.google.com/uc?export=download&id=1VRI0njuI7CfjQHJAifJDQehrpnj822gL'
    },
    {
      'name': '2016 MGT 3113. Operations Management  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1MhwnykAGF_epEiz51hc17ggkbh6pHWyC'
    },
    {
      'name': '2016 MGT 3123. Entreprenureship _ Small Business Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1PSQyKif6E9ETAOPa1IXOVv7z_Z0267NG'
    },
    {
      'name': '2017 ACC 3123. International Accounting',
      'link':
          'https://drive.google.com/uc?export=download&id=1JBtC5vYYrCNA_5yUuiHYoOFtmIg3mbf3'
    },
    {
      'name': '2017 ACC 3133. Advanced Auditing ',
      'link':
          'https://drive.google.com/uc?export=download&id=1hrGqB2s5vq6lS2eao5pOatQPmRHzRfEp'
    },
    {
      'name': '2017 ECO 3113. Econometrics ',
      'link':
          'https://drive.google.com/uc?export=download&id=17-Lm0dddlYBrVZyTo5RjDxQhN6WY-Jj3'
    },
    {
      'name': '2017 ECO 3123. Advanced Microeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=14GAJsCvXZrr5u_TzbzcrMbKVyT1rq6BM'
    },
    {
      'name': '2017 FIN 3123. Managing the Financial Institutions ',
      'link':
          'https://drive.google.com/uc?export=download&id=15X_SCMuTcpv9jQfV-7eJMSX5rsk2rDm1'
    },
    {
      'name': '2017 HRM 3113. Human Resource Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1PL2jPSbgb21zMMKFjHaM1mp6ad5hybbF'
    },
    {
      'name': '2017 HRM 3123. Performance Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1aFFmrSaIl-u5w8awgOiN6DBWU-G4UvDh'
    },
    {
      'name': '2017 HRM 3143. Employment Laws ',
      'link':
          'https://drive.google.com/uc?export=download&id=159myqdY0MOJSQFI4kCtkg6um_E6-sxOs'
    },
    {
      'name': '2017 MGT 3113. Operations Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1944LaD5w_y2Mnr8pPymYbY2BnrYkTAtV'
    },
    {
      'name': '2017 MGT 3123. Entrepreneurship and Small Business Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1x4odx4qLryN14BcYmgSc4nQUIOAR4fyP'
    },
    {
      'name': '2018 ACC 3113. Advanced Financial Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1SsZLiDBc3tjTv9CvZTBBSZXWa6VHrq4b'
    },
    {
      'name': '2018 ACC 3123. International Accounting',
      'link':
          'https://drive.google.com/uc?export=download&id=1NfZkffkml5FeLM3Q6l4nkKC1DMoxUEAB'
    },
    {
      'name': '2018 ACC 3133. Advanced Auditing',
      'link':
          'https://drive.google.com/file/d/1UCvSc3f0rNoGcC96BIMbRykdhUjUrz_k/view?usp=sharing'
    },
    {
      'name': '2018 ECO 3113. Econometrics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1Yw3XG4rBu2nQ64bqVedYJ-fKoAAvPMCH'
    },
    {
      'name': '2018 ECO 3123. Advanced Microeconomics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1PP42NOOMTrVtKKoLpDsAHalJLfIDj9C5'
    },
    {
      'name': '2018 FIN 3123. Managing the Financial Institutions ',
      'link':
          'https://drive.google.com/uc?export=download&id=1BKxKAzE6eVJARcav2CbJ-UJioGoF5hJW'
    },
    {
      'name': '2018 FIN 3133. Financial Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1B-cVqM0sCFDCULkizvVImm08a7ccM8Dz'
    },
    {
      'name': '2018 HRM 3123. Performance Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1L7njWYwmDbUTjfoSYM3E1xhvZKERYzSf'
    },
    {
      'name': '2018 HRM 3143. Employment Laws ',
      'link':
          'https://drive.google.com/uc?export=download&id=199c5uEwRG68QNi7TEyQtvxK3ZY6krek1'
    },
    {
      'name': '2018 MGT 3113. Operations Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1YwdEEFWAgyn1t2ZPsVShLchvJohC6eon'
    },
    {
      'name': '2018 MGT 3123. Entrepreneurship and Small Business Management',
      'link':
          'https://drive.google.com/file/d/16dHDKIl-v--I-DXfDD1pBLt5zqxhZx03/view?usp=sharing'
    },
  ];

  final _images = [
    //3.2 sem bs
    {
      'name': '2015 ACC 3223. Computer Based Accounting ',
      'link':
          'https://drive.google.com/uc?export=download&id=1GepgBRzp3IVCCoUH2_GLoNiQAvC1pjPY'
    },
    {
      'name': '2015 ACU 3213. Advanced Accounting Theory - Part I',
      'link':
          'https://drive.google.com/uc?export=download&id=1n-tBWIx13ricMQ8gNuV9Jz4Xpckn4uTe'
    },
    {
      'name': '2015 ACU 3213. Advanced Accounting Theory - Part II ',
      'link':
          'https://drive.google.com/uc?export=download&id=1tHJk2d4pwqztIDaWrFgmhfmYaOxJkV2A'
    },
    {
      'name': '2015 ECO 3123. Advanced Microeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1xoFtRt2dtk60DtDCktgb4C1w7WVmSHxa'
    },
    {
      'name': '2015 ECO 3213. Applications of Econometrics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1xp70ettBJq6Fbk6y7ycAEazdXmcbe9We'
    },
    {
      'name': '2015 ECO 3223. Advanced Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=16EYxLOpH1mcF6i_tSuY1X6gnPLl_DNhU'
    },
    {
      'name': '2015 ECO 3233. Labour Economics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1jIRjId6GXOBnaxbMLh7t3kV9zI1TXFFj'
    },
    {
      'name': '2015 FIN 3213. Security Analysis and portfolio Management - I ',
      'link':
          'https://drive.google.com/uc?export=download&id=1q-77nrwoFYnyfEQPxbKg1FXN0To7WoT1'
    },
    {
      'name':
          '2015 FIN 3213. Security Analysis and Portfolio Management - II  ',
      'link':
          'https://drive.google.com/uc?export=download&id=1P6B4OIIQB9kO_kPBs5tpm6xax8dB9jrt'
    },
    {
      'name': '2015 HRM 3213. Human Resource Development',
      'link':
          'https://drive.google.com/uc?export=download&id=1uDJDyrVoZBFiuS-DOHxdohAYNxoJk2Yc'
    },
    {
      'name': '2015 HRM 3233. Employment Relations',
      'link':
          'https://drive.google.com/uc?export=download&id=1wZH79X-A23Apdal7dVcPAjWU1BUXXpqZ'
    },
    {
      'name': '2015 HRM 3243. Human Resource Information Systems ',
      'link':
          'https://drive.google.com/uc?export=download&id=106vPKDlEuBCQPqOcJid72-27U9pS5tV7'
    },
    {
      'name': '2015 MAR 3223. Retail Marketing ',
      'link':
          'https://drive.google.com/uc?export=download&id=1FMRH2SufXrN6SJxJV1rjYvdgjtcjN9WZ'
    },
    {
      'name': '2015 MAR 3233. International Marketing ',
      'link':
          'https://drive.google.com/uc?export=download&id=1sdh9-jupWCQoe-MKSGMj21nYgnlVueYS'
    },
    {
      'name': '2015 MAR 3243. Hospitality Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1mZJzxOjXUVDFVtGJC0ccaIpSB97E4RFt'
    },
    {
      'name': '2016 ACC 3213 GÇô Advanced Accounting Theory',
      'link':
          'https://drive.google.com/uc?export=download&id=1msyUn4qC5VbiEiNHnpUoXELxpbrJ0LKo'
    },
    {
      'name': '2016 ACC 3223 GÇô Computer Based Accounting',
      'link':
          'https://drive.google.com/uc?export=download&id=1bnbO1WsyKU8gp0YF0_HYHfH3tggB58WE'
    },
    {
      'name': '2016 ECO 3123. Advanced Microeconomics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1X4td_IEg_Wp0qcggBhAqjdEqEPqVss9L'
    },
    {
      'name': '2016 ECO 3213 GÇô Applications of Econometrics',
      'link':
          'https://drive.google.com/uc?export=download&id=1RkHCxbp9Ljr1grJCvxN2FLSjKk7Y5arF'
    },
    {
      'name': '2016 ECO 3223 GÇô Advanced Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=1EmLxt-CgQfFu_DjxFr-jWtlNecpwpErY'
    },
    {
      'name': '2016 ECO 3233 GÇô Labor Economics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1s-FpprcJMfZ9WzZburdz23W7l3RFxoEG'
    },
    {
      'name': '2016 FIN 32113 GÇô Security Analysis and Portfolio Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1VTbwBMn_4zXcOLp2D-BvhBCapp5IuDKl'
    },
    {
      'name': '2016 HRM 3213 GÇô Human Resource Development ',
      'link':
          'https://drive.google.com/uc?export=download&id=1NhwqZo4Uthze7fJP63X7OaI1ndKsuLQ1'
    },
    {
      'name': '2016 HRM 3233 GÇô Employment Relations',
      'link':
          'https://drive.google.com/uc?export=download&id=1BgRhFSBzhasCfQZBANqHCMVSjoCGfQ2s'
    },
    {
      'name': '2016 HRM 3243 GÇô Human Resource Information Systems ',
      'link':
          'https://drive.google.com/uc?export=download&id=1lLDzs1wT6_jeu1E1Hej4zd3PEuCT_awY'
    },
    {
      'name': '2016 MAR 3213 GÇô Strategic Marketing',
      'link':
          'https://drive.google.com/uc?export=download&id=1d2YKwoD4cwq2ZdY0MFvhOoABnLp-W0Ac'
    },
    {
      'name': '2016 MAR 3233 GÇô International Marketing',
      'link':
          'https://drive.google.com/uc?export=download&id=1Is5jNXiDVhVHqNpVYrwR-3M2HFKGmyXn'
    },
    {
      'name': '2016 MAR 3243 GÇô Hospitality Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1w8dst4R7I1oYKal0KKcokK7F2sMCUan7'
    },
    {
      'name': '2016 MGT 3213 GÇô Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1bwzG2pD7LXEoYMBY7h7HkU9GMCtm9ykC'
    },
    {
      'name': '2016 MGT 3223 GÇô Management Information System',
      'link':
          'https://drive.google.com/uc?export=download&id=1uJ3xbRD0FX4JBoTBRXFzznsp3wVLCLZU'
    },
    {
      'name': '2016 MGT 3233 GÇô E-Commerce Practical ',
      'link':
          'https://drive.google.com/uc?export=download&id=1z5g-4aZ80d2KOgUxLg9o4Ibw75tL2kh6'
    },
    {
      'name': '2016 MGT 3233 GÇô E-Commerce Theory ',
      'link':
          'https://drive.google.com/uc?export=download&id=1mfL0vs0_mIPljSoJFcmI5npS4lzxyRLd'
    },
    {
      'name': '2017 ACC 3213 GÇô Advanced Accounting Theory ',
      'link':
          'https://drive.google.com/uc?export=download&id=1AFxwPCyBlSitdTUJegYKNuiw1jYMBSuT'
    },
    {
      'name': '2017 ECO 3213 GÇô Applications of Econometrics ',
      'link':
          'https://drive.google.com/uc?export=download&id=1V8hzs70qml9qoLV74JbKfKjlzN0OjirS'
    },
    {
      'name': '2017 ECO 3223 - Advanced Macroeconomics - II ',
      'link':
          'https://drive.google.com/uc?export=download&id=1Au0wrYAzuNkiPYqL_ABBbAzgmSpcPdxQ'
    },
    {
      'name': '2017 ECO 3223 GÇô Advanced Macroeconomics - I ',
      'link':
          'https://drive.google.com/uc?export=download&id=1lKLUP4rYh52OylIaLPEP5XJ88cI1V_ao'
    },
    {
      'name': '2017 ECO 3233 GÇô Labor Economics',
      'link':
          'https://drive.google.com/uc?export=download&id=1GIGFzwhAZRVCwa1D-7hpOiFKiYtBp4Ng'
    },
    {
      'name': '2017 FIN 3133. Financial Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1tO2ihY7Je440rgGIzt5tBcJKSUWcok3u'
    },
    {
      'name': '2017 FIN 3223 GÇô International Financial Management - I ',
      'link':
          'https://drive.google.com/uc?export=download&id=1mr28rRULFSUnlijBhg5-M43zcdY03GzN'
    },
    {
      'name': '2017 FIN 3223 GÇô International Financial Management - II ',
      'link':
          'https://drive.google.com/uc?export=download&id=18AQVOTxc2Nzu3IMg7Y51StPGSYOAALlE'
    },
    {
      'name': '2017 FIN 32113 GÇô Security Analysis and Portfolio Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1Dpr5C3hm6KHPF18-Bjay7JkZU_nPIIn1'
    },
    {
      'name': '2017 HRM 3233 GÇô Employment Relations ',
      'link':
          'https://drive.google.com/uc?export=download&id=1OP9RPBLG8u4kHyioDQd63ea9vjGjQXZF'
    },
    {
      'name': '2017 HRM 3243 GÇô Human Resource Information Systems ',
      'link':
          'https://drive.google.com/uc?export=download&id=1TPZraaoWMtAcLp6kMBzqwL6g1sFQtd2N'
    },
    {
      'name': '2017 MAR 3233 GÇô International Marketing ',
      'link':
          'https://drive.google.com/uc?export=download&id=10VZ7p74IuepInsqtiNd9JyPNRQoQrDXL'
    },
    {
      'name': '2017 MAR 3243 GÇô Hospitality Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1gbQcsLKAJ8WcFYFfnqwQ8tJ-lhvItdSh'
    },
    {
      'name': '2017 MGT 3233 GÇô E-Commerce Practica',
      'link':
          'https://drive.google.com/uc?export=download&id=1uTGNccYXYIqLn9cNFj5CnBjGiRWXaXFH'
    },
    {
      'name': '2018 ACC 3213. Advanced Accounting Theory',
      'link':
          'https://drive.google.com/uc?export=download&id=1_loh5K7c_rHNO5oPcfnDTHmL06l2NoQQ'
    },
    {
      'name': '2018 ACC 3223. Computer Based Accounting',
      'link':
          'https://drive.google.com/uc?export=download&id=1MxQNni33AGv9b-MPGIspMsBxyTkHCImM'
    },
    {
      'name': '2018 ECO 3213. Applications of Econometrics',
      'link':
          'https://drive.google.com/uc?export=download&id=17dzsWn_NRvrClLX6lDBCYlGqdLEG4u3f'
    },
    {
      'name': '2018 ECO 3223. Advanced Macroeconomics',
      'link':
          'https://drive.google.com/uc?export=download&id=15nzew4bLAAPAUnmIc2S6fm5GFZEn05_V'
    },
    {
      'name': '2018 ECO 3233. Labour Economics',
      'link':
          'https://drive.google.com/uc?export=download&id=1gZLtjxBf3_AFwzj9Mfz2KusRctqeIcFn'
    },
    {
      'name': '2018 FIN 3213. Security Analysis and Portfolio Management ',
      'link':
          'https://drive.google.com/uc?export=download&id=1IxgE_X01A09cg0DwblE_3Bsmp1UiQ1ht'
    },
    {
      'name': '2018 FIN 3223. International Financial Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1J42Cj15L-YNHp5QmQwqvuXHypgg9WZ41'
    },
    {
      'name': '2018 HRM 3213. Human Resource Development ',
      'link':
          'https://drive.google.com/uc?export=download&id=1L5X8a27TJ3SysxWGF8tItOubnUTK8uqz'
    },
    {
      'name': '2018 HRM 3233. Employment Relations ',
      'link':
          'https://drive.google.com/uc?export=download&id=1x-4O7JlxZv2rWY0hi1tp5M_wsj9MAIpW'
    },
    {
      'name': '2018 HRM 3243. Human Resource Information System ',
      'link':
          'https://drive.google.com/uc?export=download&id=1pnSxPMk7eMhNGDajumBsLMQv4bXLpRa-'
    },
    {
      'name': '2018 MAR 3113. Consumer Behavior',
      'link':
          'https://drive.google.com/file/d/1qMjpzE7L6LW0oxexsi0jjl56bTmdV3On/view?usp=sharing'
    },
    {
      'name': '2018 MAR 3213. Strategic Marketing',
      'link':
          'https://drive.google.com/uc?export=download&id=1EBORvAwzUIh2ueqMqasMZKXZSp81X8YT'
    },
    {
      'name': '2018 MAR 3223. Retail Marketing ',
      'link':
          'https://drive.google.com/uc?export=download&id=1GYIbRtUCmcrm_uaNnxJxfx_1nkAuA3cu'
    },
    {
      'name': '2018 MAR 3233. International Marketing ',
      'link':
          'https://drive.google.com/uc?export=download&id=1e1-fWeLP9lJpo4Ob5zPmTVfKaNRfTtEj'
    },
    {
      'name': '2018 MAR 3243. Hospitality Management',
      'link':
          'https://drive.google.com/uc?export=download&id=19CYtapL5AsAUZeBIJdsHGxLFFMNL-hGY'
    },
    {
      'name': '2018 MGT 3213. Project Management',
      'link':
          'https://drive.google.com/uc?export=download&id=1Dg5aaObZ3bDywzrER9d7kTB-8K7Gl7LB'
    },
    {
      'name': '2018 MGT 3223. Management Information Systems',
      'link':
          'https://drive.google.com/uc?export=download&id=1A4v4N8h1d-EZsPBh-lUUbLUwx0odqwWS'
    },
    {
      'name': '2018 MGT 3233. E-Commerce (Theory) ',
      'link':
          'https://drive.google.com/uc?export=download&id=1nB9KQfra5hjFrFehDvyp4oj5fje8UaYQ'
    },
    {
      'name': '2018 MGT 3233. E-Commerce (Theory)(1) ',
      'link':
          'https://drive.google.com/uc?export=download&id=1VvEXJMW1jfkTsfL3O6SLY3Mu-x-KlmuS'
    },
    {
      'name': '2018 MGT 3233. E-Commerce ',
      'link':
          'https://drive.google.com/uc?export=download&id=1yamBvBdQNvGC8aD-TyH668iJ_QBTHWxD'
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

    _items.add(_ItemHolder(name: 'Third Year Frist Semester'));
    for (int i = count; i < _tasks!.length; i++) {
      _items.add(_ItemHolder(name: _tasks![i].name, task: _tasks![i]));
      count++;
    }

    _tasks!.addAll(_images
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
