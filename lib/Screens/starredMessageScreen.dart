import 'package:flutter/material.dart';

class StarredMessage extends StatefulWidget {
  const StarredMessage({Key? key}) : super(key: key);

  @override
  State<StarredMessage> createState() => _StarredMessageState();
}

class _StarredMessageState extends State<StarredMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred message"),
      ),
      body: Container(),
    );
  }
}
