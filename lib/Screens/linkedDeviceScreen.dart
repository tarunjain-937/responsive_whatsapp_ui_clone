import 'package:flutter/material.dart';

class LinkedDevice extends StatefulWidget {
  const LinkedDevice({Key? key}) : super(key: key);

  @override
  State<LinkedDevice> createState() => _LinkedDeviceState();
}

class _LinkedDeviceState extends State<LinkedDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked device"),
      ),
      body: Container(),
    );
  }
}
