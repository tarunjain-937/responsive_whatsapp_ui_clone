import 'package:flutter/material.dart';

class Newgroup extends StatefulWidget {
  const Newgroup({Key? key}) : super(key: key);

  @override
  State<Newgroup> createState() => _NewgroupState();
}

class _NewgroupState extends State<Newgroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New group"),
      ),
      body: Container(),
    );
  }
}
