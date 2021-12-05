import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';

class Department extends StatefulWidget {
  final c, d1, d2,fristdepartmentname,seconddepartmentname;
  const Department(this.c, this.d1, this.d2,this.fristdepartmentname,this.seconddepartmentname);

  @override
  _DepartmentState createState() => _DepartmentState(this.c, this.d1, this.d2,this.fristdepartmentname,this.seconddepartmentname);
}

class _DepartmentState extends State<Department> {
  final c, d1, d2,fristdepartmentname,seconddepartmentname;
  _DepartmentState(this.c, this.d1, this.d2,this. fristdepartmentname, this.seconddepartmentname);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Customelevated(fristdepartmentname, c, d1),
            SizedBox(
              height: 50,
            ),
            Customelevated(seconddepartmentname, c, d2),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
