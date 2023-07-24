import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/linkedDeviceScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/newBroadcastScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/newGroupScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/paymentsScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/starredMessageScreen.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/chatList.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/contactList.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/webSearchBar.dart';
import '../Screens/settingsScreen.dart';


class desktopScreenLayout extends StatefulWidget {
  const desktopScreenLayout({Key? key}) : super(key: key);

  @override
  State<desktopScreenLayout> createState() => _desktopScreenLayoutState();
}

class _desktopScreenLayoutState extends State<desktopScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 1
                    )
                  ),
                  child: Scaffold(
                    appBar: AppBar(
                      leading: const Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("lib/img1.jpg"),
                          radius: 25,
                        ),
                      ),
                      actions: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.groups_rounded,size: 25,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.send_time_extension_sharp,size: 25,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.message,size: 25,)),
                        PopupMenuButton(
                            itemBuilder: (context) => [


                              PopupMenuItem(
                                  value: 1,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return Newgroup();//=================X===X==
                                            },));
                                          }, child: const Text("New group",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),


                              PopupMenuItem(
                                  value: 2,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return NewBroadCast();//=================X===X==
                                            },));
                                          }, child: const Text("New broadcast",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),


                              PopupMenuItem(
                                  value: 3,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return LinkedDevice();//=================X===X==
                                            },));
                                          }, child: const Text("Linked device",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),


                              PopupMenuItem(
                                  value:4,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return StarredMessage();//=================X===X==
                                            },));
                                          }, child: const Text("Starred messages",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),

                              PopupMenuItem(
                                  value: 5,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return Payments();//=================X===X==
                                            },));
                                          }, child: const Text("Payments",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),

                              PopupMenuItem(
                                  value: 6,
                                  child : Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return Settings();
                                            },));
                                          }, child: const Text("Settings",style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                                  )),
                            ],
                            color: Colors.white,
                            iconSize: 28),
                      ],
                    ),
                   body: SingleChildScrollView(
                     child: Column(
                       children: const [
                         webSearchBar(),
                         contactList()
                       ],
                     ),
                   ) ,

                  ),
                ),
              ),

              Container(
               width: MediaQuery.of(context).size.width * 0.75,
                child: Scaffold(
                  appBar: AppBar(
                    leading: const Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("lib/img2.png"),
                        radius: 25,
                      ),
                    ),
                    title: Text("Darsh jain"),
                    actions: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 25,))
                    ],
                  ),
                  body: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.1,
                                image: AssetImage("lib/whatsapp Background image.jpg")),
                          ),
                          child: Expanded(child: chatList()),
                        ),
                      ),

                      Card(
                        elevation: 2,
                        shadowColor: Colors.black54,
                        margin: EdgeInsets.all(0),
                        child:Container(
                          // height: MediaQuery.of(context).size.height * 0.06,
                          height:60,
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          color: Color(0xff075e55),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.emoji_emotions_outlined,size: 30,color: Colors.white70,),
                                  splashColor: Colors.black,),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.attach_file,size: 30,color: Colors.white70,),
                                splashColor: Colors.black,),

                              Expanded(
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.07,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(width: 0,color: Colors.white24)),
                                      filled: false,
                                      fillColor: Colors.white24,
                                      hintStyle: TextStyle(fontSize: 16,color: Colors.white70),
                                      hintText: "Type a message",
                                    ),
                                  ),
                                ),
                              ),

                              IconButton(onPressed: (){}, icon: Icon(Icons.mic,size: 30,color: Colors.white70,),),
                              IconButton(onPressed: (){}, icon: Icon(Icons.send_sharp,size: 30,color: Colors.white70,),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}


