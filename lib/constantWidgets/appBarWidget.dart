import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/linkedDeviceScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/newBroadcastScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/newGroupScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/paymentsScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/settingsScreen.dart';
import 'package:responsive_whatsapp_ui_clone/Screens/starredMessageScreen.dart';
import 'package:responsive_whatsapp_ui_clone/utilities/webSearchBar.dart';

 var appBarWidget = AppBar(
  elevation: 0,
  title: Text("WhatsApp", style: TextStyle( fontSize: 22)),

  /// Appbar Actions property
  actions: [

    IconButton(
      onPressed: () {},
      icon: Icon(Icons.camera_alt_outlined, size: 28),
    ),


    IconButton(
      onPressed: (){},
      icon: Icon(Icons.search_rounded, size: 28),
    ),


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

  /// Appbar bottom property
  bottom: const TabBar(
      indicatorColor: Colors.white,
      tabs: [
        Tab(icon: Icon(Icons.groups_rounded)),

        Tab(child: Expanded( flex: 1, child: Text("Chats",style: TextStyle(fontSize: 16)))),

        Tab(child: Expanded( flex: 1, child: Text("Status",style: TextStyle(fontSize: 16)))),

        Tab(child: Expanded(flex: 1, child: Text("Calls",style: TextStyle(fontSize: 16))))
      ]),
);