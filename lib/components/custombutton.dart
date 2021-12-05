import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customelevated extends StatelessWidget {
  final t, c,  p;
  Customelevated(this.t, this.c,  this.p);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => p,
              ));
        },
        child: Text(t,
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 30, color: Colors.black)),
        style: ElevatedButton.styleFrom(
            primary: c,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
      ),
    );
  }
}
