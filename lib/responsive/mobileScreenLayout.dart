import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/constantWidgets/appBarWidget.dart';
import 'package:responsive_whatsapp_ui_clone/tabBarScreens/callScreen.dart';
import 'package:responsive_whatsapp_ui_clone/tabBarScreens/chatsScreen.dart';
import 'package:responsive_whatsapp_ui_clone/tabBarScreens/communityScreen.dart';
import 'package:responsive_whatsapp_ui_clone/tabBarScreens/statusScreen.dart';


class mobileScreenLayout extends StatefulWidget {
  const mobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<mobileScreenLayout> createState() => _mobileScreenLayoutState();
}

class _mobileScreenLayoutState extends State<mobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: appBarWidget,
          body:  const TabBarView(children: [
            //we can add new pages in Tabs as well as new widgets.
            Community(),
            Chats(),
            Status(),
            Calls()
          ]),
        )
    );
  }
}
