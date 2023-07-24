import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/contactList.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: "Make a message",
        elevation: 13,
        backgroundColor:const  Color(0xff075e55),
        child: const Icon(Icons.message,color: Colors.white),
      ),

      ///Body
      body: contactList(),
    );
  }
}
