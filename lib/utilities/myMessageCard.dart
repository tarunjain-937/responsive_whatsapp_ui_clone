import 'package:flutter/material.dart';

class myMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const myMessageCard({required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width -50,
          ),
      child: Card(
        elevation: 1,
        color: const Color(0xff075e55),
        margin: const EdgeInsets.symmetric( horizontal: 15, vertical: 5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            topLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)
          ),
        ),
        child: Stack(
          children: [
            Padding(padding: const EdgeInsets.only(top: 5,bottom: 20,left: 10,right:30 ),
            child: Text(message, style: const TextStyle(fontSize: 16, color: Colors.white))),
            Positioned(
              bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(date,style: const TextStyle(fontSize: 13,color: Colors.white60)),
                    const SizedBox(width: 6),
                    const Icon(Icons.done_all_outlined,size: 20,color: Colors.blue,)
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
