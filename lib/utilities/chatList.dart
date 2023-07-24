import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/info.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/myMessageCard.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/senderMessagesCard.dart';

class chatList extends StatelessWidget {

  const chatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: messages.length,
       itemBuilder: (context, index) {
         if(messages[index]["isME"] == true){
           /// Message is send by us. --> card

           return senderMessageCard(message: messages[index]["text"].toString(), date: messages[index]["time"].toString());
         }
             /// Message is send by sender.
             return myMessageCard(
             message: messages[index]["text"].toString(),
             date: messages[index]["time"].toString()
             );
        },
    );
  }
}
