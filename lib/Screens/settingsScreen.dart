import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:responsive_whatsapp_ui_clone/Screens/Profile.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [

              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),)),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("lib/img1.jpg",height: 65,width: 65,fit: BoxFit.cover,),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Tarun Jain",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                SizedBox(height: 6),
                                Text("Architecture is my dream",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),)
                              ],
                            ),
                          ),
                        ),

                        Icon(CupertinoIcons.qrcode,color:Color(0xff075e55),size: 30)
                      ],
                    ),
                  ),
                ),
              ),

              Divider(color: Colors.grey,height: 3),

              //===========================================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(Icons.key_sharp,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Account",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Security notification, change number",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //==========================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.profile_circled,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Avtar",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Create, edit, profile photo",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //============================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.lock_fill,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Privacy",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Block contacts,disappearing",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                          Text("messages",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //=======================================================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.chat_bubble_2_fill,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Chats",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Theme, wallpaper, chat history",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //==========================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.bell_fill,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Notification",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Messages, group & call tones",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //=================================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.book_circle,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Storage and data",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Network usage, auto-download",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //===========================================================

              SizedBox(height: 6),
               InkWell(
                 onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.globe,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("App Language",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("English (phone's language)",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //========================================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.question_circle,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Help",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(height: 6),
                          Text("Help center, contacts us,",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                          Text("privacy policy",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //==========================================================================================

              SizedBox(height: 6),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            padding: EdgeInsets.all(2),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(CupertinoIcons.group_solid,color:Colors.grey,size: 32),
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Invite a friend",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //============================================================================================

              SizedBox(height: 45,),

              Column(
                children: [
                  Text("from", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Icon(CupertinoIcons.loop,size: 25),
                      SizedBox(width: 8),
                      Text("Meta", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
