import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/mobileChatScreen.dart';
import 'info.dart';

class contactList extends StatelessWidget {
  const contactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length ,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return mobileChatScreen();
                },));
              },
              child: ListTile(
                title: Text(info[index]["name"].toString(), style: TextStyle(fontSize: 18),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(info[index]["message"].toString(), style: TextStyle(fontSize: 15),),
                ),
                leading: InkWell(
                  onTap: (){print("circle avatar");},
                  child: CircleAvatar(
                    backgroundImage: AssetImage(info[index]["profilePic"].toString()),
                    radius: 30,
                  ),
                ),
                trailing: Column(
                  children: [
                    Text(info[index]["time"].toString(), style: TextStyle(fontSize: 16),),
                    Icon(Icons.check_outlined),
                  ],
                ),
              ),
            );
          },),
    );
  }
}
