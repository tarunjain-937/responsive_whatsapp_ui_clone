import 'package:flutter/material.dart';

class NewBroadCast extends StatefulWidget {
  const NewBroadCast({Key? key}) : super(key: key);

  @override
  State<NewBroadCast> createState() => _NewBroadCastState();
}

class _NewBroadCastState extends State<NewBroadCast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New broadcast"),
      ),
      body: Container(),
    );
  }
}
