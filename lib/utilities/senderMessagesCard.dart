import 'package:flutter/material.dart';

class senderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  senderMessageCard({required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width -50,
          ),
          child: Card(
            elevation: 1,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric( horizontal: 15, vertical: 5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)
              ),
            ),
            child: Stack(
              children: [
                Padding(padding: const EdgeInsets.only(top: 5,bottom: 20,left: 10,right:30 ),
                    child: Text(message, style: const TextStyle(fontSize: 16, color: Colors.black))),
                Positioned(
                    bottom: 2,
                    right: 10,
                    child: Text(date,style: const TextStyle(fontSize: 13,color: Colors.white60)))
              ],
            ),
          )),
    );
  }
}
