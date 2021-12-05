import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';

class Dialogbox{

Future <dynamic>dialogbox(BuildContext context,String title,String desc,final type,final p)async{
  return
  AwesomeDialog(
                                    context: context,
                                    dialogType: type,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: title,
                                    desc: desc,
                                    btnOkOnPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>p,
                                          ));
                                    },
                                  )..show();




}















}