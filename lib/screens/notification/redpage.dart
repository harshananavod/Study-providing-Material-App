import 'package:flutter/material.dart';

class Redpage extends StatefulWidget {
  const Redpage({Key? key}) : super(key: key);

  @override
  _RedpageState createState() => _RedpageState();
}

class _RedpageState extends State<Redpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      width: 200,
    );
  }
}
