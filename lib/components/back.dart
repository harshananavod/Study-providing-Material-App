import 'package:flutter/material.dart';

class Backbuttons extends StatefulWidget {
  const Backbuttons({Key? key}) : super(key: key);

  @override
  _BackbuttonState createState() => _BackbuttonState();
}

class _BackbuttonState extends State<Backbuttons> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.fast_rewind_rounded,
        color: Colors.black,
        size: 50,
      ),
    );
  }
}
