import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/chatList.dart';

class mobileChatScreen extends StatefulWidget {

  @override
  State<mobileChatScreen> createState() => _mobileChatScreenState();
}

class _mobileChatScreenState extends State<mobileChatScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /// AppBar
      appBar: AppBar(
        leading:  InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back,size: 20,),
              const SizedBox(width: 1),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("lib/img1.jpg",height: 34,width: 34,fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
        title: InkWell(
            onTap: (){},
            child: Container(
                width: double.infinity,
                padding:const EdgeInsets.only(top: 8,bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    Text("Tarun jain", style: TextStyle(fontSize: 22),),
                    SizedBox(height: 5,),
                    Text("Online", style: TextStyle(fontSize: 14),)
                  ],
                ))),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.videocam_fill,size: 24,)),
          const SizedBox(width: 10),
          IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.phone_fill,size: 24,)),
          const SizedBox(width: 10),
          PopupMenuButton(
              itemBuilder: (context) => [


                PopupMenuItem(
                    value: 1,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("View contacts",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),


                PopupMenuItem(
                    value: 2,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("Media, links and docs",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),


                PopupMenuItem(
                    value: 3,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("Search",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),


                PopupMenuItem(
                    value:4,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("Mute notification",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),

                PopupMenuItem(
                    value: 5,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("Disappearing messages",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),

                PopupMenuItem(
                    value: 6,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: const Text("Wallpaper",style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),))
                    )),

                PopupMenuItem(
                    value: 7,
                    child : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                            onPressed: (){},
                            child: Row(
                              children: const [
                                Expanded(
                                  child:  Text("More",style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.w500,color: Colors.black),),
                                ),

                                Icon(Icons.arrow_right,size: 28,color: Colors.grey,)
                              ],
                            ))
                    )),
              ],
              color: Colors.white,
              iconSize: 28),
        ],
      ),

      /// Body
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
    );
  }
}
